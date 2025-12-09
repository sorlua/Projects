import discord
from discord import app_commands
import requests
import asyncio
import google.generativeai as genai
from discord.ext import tasks
import os

# // CONFIGURATION //
DISCORD_TOKEN = ""
GEMINI_KEY = ""
CHANNEL_ID = 1447923185293983855
GITHUB_ORG = ""

# // SYSTEM INITIALIZATION //
genai.configure(api_key=GEMINI_KEY)
# using 1.5-flash for maximum velocity and valid schema
model = genai.GenerativeModel('gemini-2.5-flash')

class SorClient(discord.Client):
    def __init__(self):
        super().__init__(intents=discord.Intents.default())
        self.tree = app_commands.CommandTree(self)

    async def setup_hook(self):
        await self.tree.sync()

client = SorClient()

# // STATE //
processed_events = set()

# // API FUNCTIONS //
def get_latest_push_event():
    # monitors entire organization for activity
    url = f"https://api.github.com/orgs/{GITHUB_ORG}/events?per_page=5"
    try:
        r = requests.get(url)
        if r.status_code == 200:
            events = r.json()
            for event in events:
                if event['type'] == 'PushEvent':
                    return event
    except:
        pass
    return None

def get_commit_diff(repo_name, sha):
    url = f"https://api.github.com/repos/{repo_name}/commits/{sha}"
    try:
        r = requests.get(url)
        if r.status_code == 200:
            return r.json()
    except:
        pass
    return None

def generate_intelligence(repo_name, commit_data, diff_data):
    message = commit_data['message']
    
    changes_summary = ""
    
    if diff_data and 'files' in diff_data:
        for file in diff_data['files']:
            filename = file['filename']
            patch = file.get('patch', '')
            patch_snippet = patch[:2500] 
            changes_summary += f"\nFile: {filename}\nDiff:\n{patch_snippet}\n"

    # Optimization: If no files changed (e.g. merge commit), skip AI
    if not changes_summary: return None

    prompt = f"""
    ROLE: You are 'sor', the lead developer.
    TONE: Strictly lowercase. Industrial. Direct. Cold.
    PERSPECTIVE: First-person ("i").
    
    CONTEXT: I pushed an update to '{repo_name}'.
    
    TASK: Analyze the diffs and describe what i changed.
    
    RULES:
    1. USE FIRST PERSON: "i optimized the loader", "i patched the aimbot".
    2. NO PASSIVE VOICE.
    3. IGNORE: comments, whitespace, version bumps.
    4. IF REPO IS 'sorlua/Projects': This is the script hub. Talk about features (aim, esp, fixes).
    5. IF REPO IS 'sorlua/sorlua.github.io': This is the website.
    6. If the changes are technical/invisible, say: "internal: system optimization".
    
    COMMIT MSG: "{message}"
    
    CODE DIFF:
    {changes_summary}
    
    OUTPUT FORMAT:
    sor.lua // transmission
    
    [1 short, aggressive summary sentence]
    
    :: changelog [{repo_name}]
    - [change 1]
    - [change 2]
    
    status: active
    """
    
    try:
        response = model.generate_content(prompt)
        text = response.text.strip()
        if "sor.lua //" not in text:
            return f"sor.lua // transmission\n\ninternal: synchronization\n\n:: log\n- {message.lower()}"
        return text
    except:
        return f"sor.lua // transmission\n\n:: log\n- {message.lower()}"

# // SLASH COMMANDS //
@client.tree.command(name="script", description="generate loader loadstring")
async def script_command(interaction: discord.Interaction):
    code = "loadstring(game:HttpGet('https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/loader.lua'))()"
    await interaction.response.send_message(f"```lua\n{code}\n```", ephemeral=True)

# // LOOPS //
@client.event
async def on_ready():
    global processed_events
    print(f"sor.news global monitor active: {client.user}")
    
    # Sync state on launch so we don't spam old news
    latest = get_latest_push_event()
    if latest:
        processed_events.add(latest['id'])
        print(f"synced to event: {latest['id']}")
    
    monitor_org.start()

@tasks.loop(seconds=15)
async def monitor_org():
    global processed_events
    
    event = get_latest_push_event()
    
    if event and event['id'] not in processed_events:
        print(f"push detected: {event['repo']['name']}")
        
        processed_events.add(event['id'])
        
        commits = event['payload']['commits']
        if commits:
            head_commit = commits[-1]
            repo_name = event['repo']['name']
            
            diff_data = get_commit_diff(repo_name, head_commit['sha'])
            announcement = generate_intelligence(repo_name, head_commit, diff_data)
            
            if announcement:
                channel = client.get_channel(CHANNEL_ID)
                if channel:
                    embed = discord.Embed(description=announcement, color=0xff002b)
                    embed.set_footer(text=f"sor.lua // {repo_name} // {head_commit['sha'][:7]}")
                    await channel.send(embed=embed)

client.run(DISCORD_TOKEN)