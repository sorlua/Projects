import discord
from discord import app_commands
import requests
import asyncio
import google.generativeai as genai
from discord.ext import tasks
import os
import time

# // CONFIGURATION //
DISCORD_TOKEN = "insert here"
GEMINI_KEY = "insert here"
CHANNEL_ID = 1447923185293983855
TARGET_REPO = "insert here"
GITHUB_TOKEN = "insert here"

# // INIT //
genai.configure(api_key=GEMINI_KEY)
model = genai.GenerativeModel('gemini-2.5-flash')
client = discord.Client(intents=discord.Intents.default())
client.tree = app_commands.CommandTree(client)

# // HEADERS //
headers = {
    "Authorization": f"token {GITHUB_TOKEN}",
    "Accept": "application/vnd.github.v3+json",
    "Cache-Control": "no-cache"
}

# // API //
def get_repo_events():
    url = f"https://api.github.com/repos/{TARGET_REPO}/events?per_page=5&t={time.time()}"
    try:
        r = requests.get(url, headers=headers)
        if r.status_code == 200: return r.json()
    except: pass
    return []

def get_commit_details(sha):
    url = f"https://api.github.com/repos/{TARGET_REPO}/commits/{sha}"
    try:
        r = requests.get(url, headers=headers)
        if r.status_code == 200: return r.json()
    except: pass
    return None

def generate_ai(commit_data, diff_data):
    msg = commit_data.get('message') or commit_data.get('commit', {}).get('message', 'update')
    
    changes = ""
    if diff_data and 'files' in diff_data:
        for f in diff_data['files']:
            changes += f"\nFile: {f['filename']}\nDiff:\n{f.get('patch', '')[:3000]}\n"
    
    if not changes: changes = "No visible diffs. Use message."

    prompt = f"""
    ROLE: 'sor', the lead developer.
    TONE: Strictly lowercase. Cold. Industrial. Direct.
    PERSPECTIVE: First-person ("i").
    
    TASK: Analyze the diffs to write a precise changelog.
    
    RULES:
    1. Look specifically at lines starting with '+' (added text). READ THEM.
    2. If I added specific text (e.g. "no api keys for you"), summarize that specific sentiment (e.g. "i denied access to credentials").
    3. Do NOT use generic phrases like "refined documentation" unless the change is actually generic.
    4. If I changed game logic, describe the feature (e.g. "i fixed the silent aim calculation").
    5. NO PASSIVE VOICE. NO EMOJIS.
    
    MSG: "{msg}"
    CODE DIFF: 
    {changes}
    
    OUTPUT FORMAT:
    sor.lua // transmission
    [1 short sentence capturing the vibe of the change]
    :: changelog
    - [specific detail 1]
    - [specific detail 2]
    """
    try:
        return model.generate_content(prompt).text.strip()
    except:
        return f"sor.lua // transmission\n\n:: log\n- {msg}"

# // LOOP //
latest_id = None

@client.event
async def on_ready():
    global latest_id
    print(f"sor.news intelligence v2 active: {client.user}")
    
    events = get_repo_events()
    if events:
        latest_id = events[0]['id']
        print(f"synced to event: {latest_id}")
    
    monitor_loop.start()

@tasks.loop(seconds=1.0)
async def monitor_loop():
    global latest_id
    print(".", end="", flush=True)
    
    events = get_repo_events()
    if not events: return
    
    newest = events[0]
    
    if latest_id and newest['id'] != latest_id:
        print(f"\n[DETECT] Event ID: {newest['id']} | Type: {newest['type']}")
        
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
                full_diff = get_commit_details(target_sha)
                txt = generate_ai(target_commit_obj, full_diff)
                
                chan = client.get_channel(CHANNEL_ID)
                if chan:
                    embed = discord.Embed(description=txt, color=0xff002b)
                    embed.set_footer(text=f"sor.lua // {target_sha[:7]}")
                    await chan.send(embed=embed)
                    print("[SENT]")
                else:
                    print("[ERROR] Channel ID invalid.")
        
        latest_id = newest['id']

client.run(DISCORD_TOKEN)
