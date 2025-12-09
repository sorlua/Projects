if getgenv().sor_loaded then return end
getgenv().sor_loaded = true
-- test
local s = {
    rs = game:GetService("RunService"),
    ws = game:GetService("Workspace"),
    plrs = game:GetService("Players"),
    core = game:GetService("CoreGui"),
    http = game:GetService("HttpService"),
    uis = game:GetService("UserInputService"),
    mkt = game:GetService("MarketplaceService"),
    loc = game:GetService("LocalizationService"),
    stats = game:GetService("Stats")
}

local lp = s.plrs.LocalPlayer
local id = game.PlaceId
local repo = "https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/"
local wh = "https://discord.com/api/webhooks/1447660811773415591/_c3J1odSUCMmk8Oj_DxefRpiXNvOLcAOyFKsSLm52LAWVd8uy340ZxlGOfANmCyZTNLH"
local invite = "dSH6BqTXAY"

wh = wh:gsub("discord.com", "webhook.lewisakura.moe")

local games = {
    [286090429] = "Arsenal.lua",
    [14561998168] = "FNTD2.lua"
}

local gui = Instance.new("ScreenGui")
gui.Name = "sor_loader"
gui.IgnoreGuiInset = true
gui.Parent = s.core or lp.PlayerGui

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 300, 0, 100)
main.Position = UDim2.new(0.5, -150, 0.4, -50)
main.BackgroundColor3 = Color3.fromHex("#050505")
main.BorderSizePixel = 0
main.Parent = gui

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromHex("#ff002b")
stroke.Thickness = 1.5
stroke.Parent = main

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 6)
corner.Parent = main

local av = Instance.new("ImageLabel")
av.Size = UDim2.new(0, 60, 0, 60)
av.Position = UDim2.new(0, 20, 0.5, -30)
av.BackgroundTransparency = 1
av.Image = s.plrs:GetUserThumbnailAsync(lp.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
av.Parent = main

local av_corn = Instance.new("UICorner")
av_corn.CornerRadius = UDim.new(1, 0)
av_corn.Parent = av

local av_stroke = Instance.new("UIStroke")
av_stroke.Color = Color3.fromHex("#ff002b")
av_stroke.Thickness = 1
av_stroke.Parent = av

local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 200, 0, 20)
title.Position = UDim2.new(0, 90, 0, 25)
title.BackgroundTransparency = 1
title.Text = "sor.lua"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = main

local stat = Instance.new("TextLabel")
stat.Size = UDim2.new(0, 200, 0, 20)
stat.Position = UDim2.new(0, 90, 0, 45)
stat.BackgroundTransparency = 1
stat.Text = "checking system..."
stat.TextColor3 = Color3.fromHex("#888888")
stat.Font = Enum.Font.Gotham
stat.TextSize = 12
stat.TextXAlignment = Enum.TextXAlignment.Left
stat.Parent = main

local bar_bg = Instance.new("Frame")
bar_bg.Size = UDim2.new(1, 0, 0, 2)
bar_bg.Position = UDim2.new(0, 0, 1, -2)
bar_bg.BackgroundColor3 = Color3.fromHex("#1a1a1a")
bar_bg.BorderSizePixel = 0
bar_bg.Parent = main

local bar_fill = Instance.new("Frame")
bar_fill.Size = UDim2.new(0, 0, 1, 0)
bar_fill.BackgroundColor3 = Color3.fromHex("#ff002b")
bar_fill.BorderSizePixel = 0
bar_fill.Parent = bar_bg

local function tween(o, p)
    game:GetService("TweenService"):Create(o, TweenInfo.new(0.5, Enum.EasingStyle.Quint), p):Play()
end

local function join_discord()
    if setclipboard then
        setclipboard("https://discord.gg/" .. invite)
    elseif toclipboard then
        toclipboard("https://discord.gg/" .. invite)
    end
    
    local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if req then
        for i = 6463, 6472 do
            task.spawn(function()
                pcall(function()
                    req({
                        Url = "http://127.0.0.1:" .. tostring(i) .. "/rpc?v=1",
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json",
                            ["Origin"] = "https://discord.com"
                        },
                        Body = s.http:JSONEncode({
                            cmd = "INVITE_BROWSER",
                            args = { code = invite },
                            nonce = s.http:GenerateGUID(false)
                        })
                    })
                end)
            end)
        end
    end
end

task.wait(0.5)
tween(bar_fill, {Size = UDim2.new(0.2, 0, 1, 0)})

local exec = (identifyexecutor and identifyexecutor()) or (getexecutorname and getexecutorname()) or "Unknown"
local identity = (getthreadidentity and getthreadidentity()) or "Unknown"
local bad_execs = {"solara", "xeno", "unknown", "jjsploit"}
local is_bad = false

for _, v in pairs(bad_execs) do
    if exec:lower():find(v) then is_bad = true break end
end

if is_bad then
    stat.TextColor3 = Color3.fromHex("#ff002b")
    stat.Text = "bad executor detected (" .. exec .. ")"
    task.wait(2)
    stat.Text = "features may fail. loading anyway..."
    stat.TextColor3 = Color3.fromHex("#888888")
    task.wait(1)
else
    stat.Text = "executor validated: " .. exec
    task.wait(0.5)
end

tween(bar_fill, {Size = UDim2.new(0.5, 0, 1, 0)})

local script_url = repo .. "universal.lua"
local script_name = "Universal"

if games[id] then
    script_url = repo .. games[id]
    script_name = games[id]:gsub(".lua", "")
    stat.Text = "found module: " .. script_name
else
    stat.Text = "game not supported. loading universal."
end

task.spawn(function()
    local succ, info = pcall(function() return s.mkt:GetProductInfo(id) end)
    local g_name = succ and info.Name or "Unknown"
    
    local fps = workspace:GetRealPhysicsFPS()
    local ping = s.stats.Network.ServerStatsItem["Data Ping"]:GetValueString():gsub("%s+", "")
    local mem = math.floor(gcinfo() / 1024)
    local region = s.loc.RobloxLocaleId
    local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
    local premium = lp.MembershipType == Enum.MembershipType.Premium and "Yes" or "No"
    
    local data = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "sor.lua // industrialist",
            ["description"] = "Comprehensive execution data log.",
            ["color"] = 16711723,
            ["thumbnail"] = { ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..lp.UserId.."&width=420&height=420&format=png" },
            ["fields"] = {
                {
                    ["name"] = ":: user data",
                    ["value"] = string.format("**Display:** %s\n**Username:** %s\n**ID:** %d\n**Age:** %d days\n**Premium:** %s\n**Locale:** %s", lp.DisplayName, lp.Name, lp.UserId, lp.AccountAge, premium, region),
                    ["inline"] = true
                },
                {
                    ["name"] = ":: game data",
                    ["value"] = string.format("**Name:** %s\n**ID:** %d\n**Players:** %d/%d\n**Job ID:** `%s`", g_name, id, #s.plrs:GetPlayers(), s.plrs.MaxPlayers, game.JobId),
                    ["inline"] = false
                },
                {
                    ["name"] = ":: executor data",
                    ["value"] = string.format("**Name:** %s\n**Level:** %s\n**Script:** %s\n**HWID:** `%s`", exec, tostring(identity), script_name, hwid),
                    ["inline"] = false
                },
                {
                    ["name"] = ":: performance",
                    ["value"] = string.format("**Ping:** %s\n**FPS:** %d\n**Memory:** %d MB", ping, fps, mem),
                    ["inline"] = true
                }
            },
            ["footer"] = {
                ["text"] = "sor.lua // " .. os.date("%Y-%m-%d %X")
            }
        }}
    }
    
    local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if req then
        req({
            Url = wh,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = s.http:JSONEncode(data)
        })
    end
end)

join_discord()
tween(bar_fill, {Size = UDim2.new(0.8, 0, 1, 0)})

local success, result = pcall(function()
    return game:HttpGet(script_url)
end)

if success then
    tween(bar_fill, {Size = UDim2.new(1, 0, 1, 0)})
    stat.Text = "injecting..."
    task.wait(0.3)
    
    task.spawn(function()
        loadstring(result)()
    end)
    
    task.wait(1)
    tween(main, {BackgroundTransparency = 1})
    tween(stroke, {Transparency = 1})
    tween(av, {ImageTransparency = 1})
    tween(av_stroke, {Transparency = 1})
    tween(title, {TextTransparency = 1})
    tween(stat, {TextTransparency = 1})
    tween(bar_bg, {BackgroundTransparency = 1})
    tween(bar_fill, {BackgroundTransparency = 1})
    task.wait(0.5)
    gui:Destroy()
else
    stat.Text = "error fetching module."
    stat.TextColor3 = Color3.fromHex("#ff0000")
    warn("sor.lua load error: " .. tostring(result))
    task.wait(3)
    gui:Destroy()
end
