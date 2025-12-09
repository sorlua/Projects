import discord
from discord import app_commands
import requests
import asyncio
import google.generativeai as genai
from discord.ext import tasks
import os
import time
import json

# // CONFIGURATION //
DISCORD_TOKEN = ""
GEMINI_KEY = ""
GITHUB_TOKEN = ""

# // CHANNELS //
NEWS_CHANNEL_ID = 1447923185293983855   # GitHub Code Pushes
ROBLOX_CHANNEL_ID = 1448088487130693845 # Roblox Version Updates
EXEC_CHANNEL_ID = 1448088461872599214   # Exploit Status Changes

TARGET_REPO = "sorlua/Projects"

# // API ENDPOINTS //
WEAO_API = "https://api.weao.xyz"
WEAO_HEADERS = {"User-Agent": "WEAO-3PService"}

# // INIT //
genai.configure(api_key=GEMINI_KEY)
model = genai.GenerativeModel('gemini-2.5-flash')
client = discord.Client(intents=discord.Intents.default())
client.tree = app_commands.CommandTree(client)

# // STATE CACHE //
last_github_id = None
last_roblox_ver = None
exploit_cache = {}

# // UTILS //
def get_roblox_version():
    try:
        r = requests.get(f"{WEAO_API}/versions/current", headers=WEAO_HEADERS)
        if r.status_code == 200: return r.json()
    except: pass
    return None

def get_exploits():
    try:
        r = requests.get(f"{WEAO_API}/status/exploits", headers=WEAO_HEADERS)
        if r.status_code == 200: return r.json()
    except: pass
    return []

# // GITHUB API //
def get_repo_events():
    url = f"https://api.github.com/repos/{TARGET_REPO}/events?per_page=5&t={time.time()}"
    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Accept": "application/vnd.github.v3+json",
        "Cache-Control": "no-cache"
    }
    try:
        r = requests.get(url, headers=headers)
        if r.status_code == 200: return r.json()
    except: pass
    return []

def get_commit_details(sha):
    url = f"https://api.github.com/repos/{TARGET_REPO}/commits/{sha}"
    headers = {"Authorization": f"token {GITHUB_TOKEN}"}
    try:
        r = requests.get(url, headers=headers)
        if r.status_code == 200: return r.json()
    except: pass
    return None

def generate_ai_changelog(commit_data, diff_data):
    msg = commit_data.get('message') or commit_data.get('commit', {}).get('message', 'update')
    changes = ""
    if diff_data and 'files' in diff_data:
        for f in diff_data['files']:
            changes += f"\nFile: {f['filename']}\nDiff:\n{f.get('patch', '')[:3000]}\n"
    if not changes: changes = "No diffs. Use message."

    prompt = f"""
    ROLE: 'sor', lead developer. TONE: Cold. Industrial. PERSPECTIVE: "i".
    TASK: Changelog for {TARGET_REPO}.
    RULES: 1. '-' = removed, '+' = added. 2. Summarize sentiment if text added. 3. No passive voice.
    MSG: "{msg}"
    DIFF: {changes}
    OUTPUT FORMAT:
    sor.lua // transmission
    [1 aggressive sentence]
    :: changelog
    - [detail 1]
    - [detail 2]
    """
    try: return model.generate_content(prompt).text.strip()
    except: return f"sor.lua // transmission\n\n:: log\n- {msg}"

# // SLASH COMMANDS //
@client.tree.command(name="script", description="get loader loadstring")
async def script_cmd(interaction: discord.Interaction):
    code = "loadstring(game:HttpGet('https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/loader.lua'))()"
    await interaction.response.send_message(f"```lua\n{code}\n```", ephemeral=True)

@client.tree.command(name="roblox", description="check current roblox version")
async def roblox_cmd(interaction: discord.Interaction):
    data = get_roblox_version()
    if data:
        embed = discord.Embed(title=":: roblox status", color=0xff002b)
        embed.add_field(name="Windows", value=f"`{data.get('Windows', 'Unknown')}`", inline=False)
        embed.add_field(name="Mac", value=f"`{data.get('Mac', 'Unknown')}`", inline=False)
        embed.set_footer(text="sor.lua // weao api")
        await interaction.response.send_message(embed=embed)
    else:
        await interaction.response.send_message("api error.", ephemeral=True)

@client.tree.command(name="status", description="check exploit status (solara, wave, etc)")
async def status_cmd(interaction: discord.Interaction, name: str):
    exploits = get_exploits()
    target = None
    for ex in exploits:
        if name.lower() in ex['title'].lower():
            target = ex
            break
    
    if target:
        status_color = 0x00ff00 if not target.get('detected') else 0xff002b
        embed = discord.Embed(title=f":: {target['title']}", color=status_color)
        embed.add_field(name="Status", value="🔴 DETECTED" if target.get('detected') else "🟢 SAFE", inline=True)
        embed.add_field(name="Version", value=target.get('version', 'N/A'), inline=True)
        embed.add_field(name="Updated", value=target.get('updateStatus', 'Unknown'), inline=False)
        await interaction.response.send_message(embed=embed)
    else:
        await interaction.response.send_message(f"executor '{name}' not found.", ephemeral=True)

# // LOOPS //
@client.event
async def on_ready():
    global last_github_id, last_roblox_ver
    print(f"sor.news v8 (routed) active: {client.user}")
    
    # Sync Github
    ev = get_repo_events()
    if ev: last_github_id = ev[0]['id']
    
    # Sync Roblox
    rbx = get_roblox_version()
    if rbx: last_roblox_ver = rbx.get('Windows')
    
    # Sync Exploits
    exps = get_exploits()
    for ex in exps:
        exploit_cache[ex['title']] = ex
    
    monitor_github.start()
    monitor_roblox.start()
    monitor_exploits.start()

# 1. GITHUB MONITOR -> NEWS CHANNEL
@tasks.loop(seconds=2.0)
async def monitor_github():
    global last_github_id
    events = get_repo_events()
    if not events: return
    
    newest = events[0]
    if last_github_id and newest['id'] != last_github_id:
        if newest['type'] == 'PushEvent':
            payload = newest.get('payload', {})
            commits = payload.get('commits', [])
            
            target_sha = None
            target_commit_obj = None
            
            if commits:
                target_commit_obj = commits[-1]
                target_sha = target_commit_obj['sha']
            elif 'head' in payload:
                target_sha = payload['head']
                target_commit_obj = get_commit_details(target_sha)
            
            if target_sha and target_commit_obj:
                diff = get_commit_details(target_sha)
                txt = generate_ai_changelog(target_commit_obj, diff)
                
                chan = client.get_channel(NEWS_CHANNEL_ID)
                if chan:
                    embed = discord.Embed(description=txt, color=0xff002b)
                    embed.set_footer(text=f"sor.lua // {target_sha[:7]}")
                    await chan.send(embed=embed)
        last_github_id = newest['id']

# 2. ROBLOX MONITOR -> ROBLOX CHANNEL
@tasks.loop(minutes=5)
async def monitor_roblox():
    global last_roblox_ver
    data = get_roblox_version()
    if data:
        curr = data.get('Windows')
        if last_roblox_ver and curr != last_roblox_ver:
            chan = client.get_channel(ROBLOX_CHANNEL_ID)
            if chan:
                embed = discord.Embed(title=":: roblox update detected", description=f"windows version hash changed.\n`{last_roblox_ver}` -> `{curr}`", color=0xffaa00)
                await chan.send(embed=embed)
            last_roblox_ver = curr

# 3. EXPLOIT MONITOR -> EXEC CHANNEL
@tasks.loop(minutes=5)
async def monitor_exploits():
    current_data = get_exploits()
    for ex in current_data:
        name = ex['title']
        cached = exploit_cache.get(name)
        
        if cached:
            # Check Detection
            if ex.get('detected') != cached.get('detected'):
                chan = client.get_channel(EXEC_CHANNEL_ID)
                if chan:
                    status = "🔴 DETECTED" if ex.get('detected') else "🟢 SAFE"
                    embed = discord.Embed(title=f":: security alert [{name}]", description=f"status changed to: **{status}**", color=0xff002b)
                    await chan.send(embed=embed)
            
            # Check Version Update (Optional: Uncomment to enable)
            # if ex.get('version') != cached.get('version'):
            #     chan = client.get_channel(EXEC_CHANNEL_ID)
            #     if chan:
            #         embed = discord.Embed(title=f":: update [{name}]", description=f"version updated: `{ex.get('version')}`", color=0x00ff00)
            #         await chan.send(embed=embed)
        
        exploit_cache[name] = ex

client.run(DISCORD_TOKEN)
