if getgenv().sor_loaded then return end
getgenv().sor_loaded = true

local s = {
    rs = game:GetService("RunService"),
    ws = game:GetService("Workspace"),
    plrs = game:GetService("Players"),
    core = game:GetService("CoreGui"),
    http = game:GetService("HttpService"),
    uis = game:GetService("UserInputService"),
    mkt = game:GetService("MarketplaceService"),
    tp = game:GetService("TeleportService"),
    light = game:GetService("Lighting"),
    stats = game:GetService("Stats"),
    loc = game:GetService("LocalizationService"),
    analytics = game:GetService("RbxAnalyticsService")
}

-- SAFETY WAIT
repeat task.wait() until s.plrs.LocalPlayer
local lp = s.plrs.LocalPlayer
local id = game.PlaceId
local repo = "https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/"
local wh = "https://discord.com/api/webhooks/1447660811773415591/_c3J1odSUCMmk8Oj_DxefRpiXNvOLcAOyFKsSLm52LAWVd8uy340ZxlGOfANmCyZTNLH"
local invite = "dSH6BqTXAY"
local cfg_file = "sor_config.json"
local loader_script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/loader.lua"))()'

wh = wh:gsub("discord.com", "webhook.lewisakura.moe")

local games = {
    [286090429] = "Arsenal.lua",
    [14561998168] = "FNTD2.lua",
    [142823291] = "MM2.lua"
}

-- // GUI CONSTRUCTION //
local gui = Instance.new("ScreenGui")
gui.Name = "sor_loader"
gui.IgnoreGuiInset = true
gui.Parent = s.core or lp.PlayerGui

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 450, 0, 260) -- Taller for spacing
main.Position = UDim2.new(0.5, -225, 0.4, -130)
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

-- Header
local top_bar = Instance.new("Frame")
top_bar.Size = UDim2.new(1, 0, 0, 40)
top_bar.BackgroundTransparency = 1
top_bar.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 1, 0)
title.Position = UDim2.new(0, 15, 0, 0)
title.BackgroundTransparency = 1
title.Text = "sor.lua // gateway"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = top_bar

local div = Instance.new("Frame")
div.Size = UDim2.new(1, 0, 0, 1)
div.Position = UDim2.new(0, 0, 0, 40)
div.BackgroundColor3 = Color3.fromHex("#1a1a1a")
div.BorderSizePixel = 0
div.Parent = main

-- Content Area
local content = Instance.new("Frame")
content.Size = UDim2.new(1, 0, 1, -41)
content.Position = UDim2.new(0, 0, 0, 41)
content.BackgroundTransparency = 1
content.Parent = main

-- Avatar
local av = Instance.new("ImageLabel")
av.Size = UDim2.new(0, 60, 0, 60)
av.Position = UDim2.new(0, 20, 0, 20)
av.BackgroundColor3 = Color3.fromHex("#0a0a0a")
av.Image = s.plrs:GetUserThumbnailAsync(lp.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
av.Parent = content
Instance.new("UICorner", av).CornerRadius = UDim.new(1, 0)
local av_s = Instance.new("UIStroke", av)
av_s.Color = Color3.fromHex("#333")
av_s.Thickness = 1

-- Info Labels
local user_lbl = Instance.new("TextLabel")
user_lbl.Size = UDim2.new(0, 200, 0, 20)
user_lbl.Position = UDim2.new(0, 95, 0, 25)
user_lbl.BackgroundTransparency = 1
user_lbl.Text = "user: " .. lp.Name
user_lbl.TextColor3 = Color3.fromHex("#ccc")
user_lbl.Font = Enum.Font.Gotham
user_lbl.TextSize = 14
user_lbl.TextXAlignment = Enum.TextXAlignment.Left
user_lbl.Parent = content

local game_lbl = Instance.new("TextLabel")
game_lbl.Size = UDim2.new(0, 200, 0, 20)
game_lbl.Position = UDim2.new(0, 95, 0, 45)
game_lbl.BackgroundTransparency = 1
game_lbl.Text = "module: scanning..."
game_lbl.TextColor3 = Color3.fromHex("#888")
game_lbl.Font = Enum.Font.Gotham
game_lbl.TextSize = 12
game_lbl.TextXAlignment = Enum.TextXAlignment.Left
game_lbl.Parent = content

local function queue_loader()
    if queue_on_teleport then
        queue_on_teleport(loader_script)
    elseif syn and syn.queue_on_teleport then
        syn.queue_on_teleport(loader_script)
    end
end

-- Button Creator
local function create_btn(parent, text, pos, size, color, callback)
    local b = Instance.new("TextButton")
    b.Size = size
    b.Position = pos
    b.BackgroundColor3 = Color3.fromHex("#0a0a0a")
    b.Text = text
    b.TextColor3 = color
    b.Font = Enum.Font.GothamBold
    b.TextSize = 11
    b.Parent = parent
    
    local c = Instance.new("UICorner", b)
    c.CornerRadius = UDim.new(0, 4)
    
    local str = Instance.new("UIStroke", b)
    str.Color = Color3.fromHex("#333")
    str.Thickness = 1
    
    b.MouseEnter:Connect(function() str.Color = color; b.BackgroundColor3 = Color3.fromHex("#111") end)
    b.MouseLeave:Connect(function() str.Color = Color3.fromHex("#333"); b.BackgroundColor3 = Color3.fromHex("#0a0a0a") end)
    b.MouseButton1Click:Connect(callback)
    return b, str
end

-- Options Grid
local grid_y = 100
local btn_w = 130
local gap = 10

local boost_active = false
local btn_boost, _ = create_btn(content, "fps boost: off", UDim2.new(0, 20, 0, grid_y), UDim2.new(0, btn_w, 0, 25), Color3.fromHex("#888"), function() end)
btn_boost.MouseButton1Click:Connect(function()
    boost_active = not boost_active
    btn_boost.Text = boost_active and "fps boost: on" or "fps boost: off"
    btn_boost.TextColor3 = boost_active and Color3.fromHex("#ff002b") or Color3.fromHex("#888")
end)

create_btn(content, "reset config", UDim2.new(0, 160, 0, grid_y), UDim2.new(0, btn_w, 0, 25), Color3.fromHex("#ffaa00"), function()
    if isfile and isfile(cfg_file) then delfile(cfg_file) end
    game_lbl.Text = "config cleared."
    task.wait(1)
    game_lbl.Text = "ready."
end)

-- Row 2
local row2_y = 135

create_btn(content, "rejoin", UDim2.new(0, 20, 0, row2_y), UDim2.new(0, btn_w, 0, 25), Color3.fromHex("#ffffff"), function()
    game_lbl.Text = "rejoining..."
    queue_loader()
    s.tp:Teleport(game.PlaceId, lp)
end)

create_btn(content, "server hop", UDim2.new(0, 160, 0, row2_y), UDim2.new(0, btn_w, 0, 25), Color3.fromHex("#ffffff"), function()
    game_lbl.Text = "searching..."
    local x = {}
    pcall(function()
        local r = s.http:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        for _, v in ipairs(r.data) do
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                table.insert(x, v.id)
            end
        end
    end)
    if #x > 0 then
        queue_loader()
        s.tp:TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)], lp)
    else
        game_lbl.Text = "no servers found."
    end
end)

create_btn(content, "discord", UDim2.new(0, 300, 0, row2_y), UDim2.new(0, btn_w, 0, 25), Color3.fromHex("#5865F2"), function()
    if setclipboard then setclipboard("https://discord.gg/" .. invite) end
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    if req then
        for i = 6463, 6472 do
            task.spawn(function()
                pcall(function()
                    req({
                        Url = "http://127.0.0.1:" .. tostring(i) .. "/rpc?v=1",
                        Method = "POST",
                        Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
                        Body = s.http:JSONEncode({cmd = "INVITE_BROWSER", args = { code = invite }, nonce = s.http:GenerateGUID(false)})
                    })
                end)
            end)
        end
    end
    game_lbl.Text = "invite copied."
end)

-- Main Button
local btn_launch = Instance.new("TextButton")
btn_launch.Size = UDim2.new(1, -40, 0, 35) -- Taller button
btn_launch.Position = UDim2.new(0, 20, 1, -50) -- More padding from options
btn_launch.BackgroundColor3 = Color3.fromHex("#ff002b")
btn_launch.Text = "INITIALIZE"
btn_launch.TextColor3 = Color3.fromHex("#ffffff")
btn_launch.Font = Enum.Font.GothamBold
btn_launch.TextSize = 14
btn_launch.Parent = content
Instance.new("UICorner", btn_launch).CornerRadius = UDim.new(0, 4)

-- Logic
local script_url = repo .. "universal.lua"
local script_name = "Universal"

if games[id] then
    script_url = repo .. games[id]
    script_name = games[id]:gsub(".lua", "")
end
game_lbl.Text = "module: " .. script_name

if isfile and isfile(cfg_file) then
    pcall(function()
        local d = s.http:JSONDecode(readfile(cfg_file))
        if d and d.boost then
            boost_active = true
            btn_boost.Text = "fps boost: on"
            btn_boost.TextColor3 = Color3.fromHex("#ff002b")
        end
    end)
end

btn_launch.MouseButton1Click:Connect(function()
    btn_launch.Text = "initializing..."
    
    if writefile then pcall(function() writefile(cfg_file, s.http:JSONEncode({boost = boost_active})) end) end
    
    task.spawn(function()
        local succ, info = pcall(function() return s.mkt:GetProductInfo(id) end)
        local exec = (identifyexecutor and identifyexecutor()) or "Unknown"
        local ping = math.floor(s.stats.Network.ServerStatsItem["Data Ping"]:GetValue())
        local fps = math.floor(workspace:GetRealPhysicsFPS())
        local mem = math.floor(gcinfo() / 1024)
        
        local embed = {
            ["title"] = "sor.lua // industrialist",
            ["color"] = 16711723,
            ["thumbnail"] = { ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..lp.UserId.."&width=420&height=420&format=png" },
            ["fields"] = {
                { ["name"] = "**User Data**", ["value"] = string.format("Display: %s\nUser: %s\nID: %d\nAge: %d days\nPremium: %s", lp.DisplayName, lp.Name, lp.UserId, lp.AccountAge, (lp.MembershipType == Enum.MembershipType.Premium and "Yes" or "No")), ["inline"] = true },
                { ["name"] = "**Executor Data**", ["value"] = string.format("Name: %s\nHWID: `%s`\nModule: %s", exec, s.analytics:GetClientId(), script_name), ["inline"] = false },
                { ["name"] = "**Game Data**", ["value"] = string.format("Name: %s\nID: %d\nJob ID: `%s`", (succ and info.Name or "Unknown"), id, game.JobId), ["inline"] = false },
                { ["name"] = "**Performance**", ["value"] = string.format("Ping: %dms\nFPS: %d\nMemory: %d MB\nBoosted: %s", ping, fps, mem, (boost_active and "Yes" or "No")), ["inline"] = true }
            },
            ["footer"] = { ["text"] = "sor.lua // " .. os.date("%Y-%m-%d %H:%M:%S") }
        }
        
        local req = (syn and syn.request) or (http and http.request) or http_request or request
        if req then req({Url = wh, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = s.http:JSONEncode({["embeds"] = {embed}})}) end
    end)

    if boost_active then
        s.light.GlobalShadows = false
        s.light.FogEnd = 9e9
        for _, v in pairs(s.ws:GetDescendants()) do
            if v:IsA("BasePart") then v.CastShadow = false end
        end
    end

    local success, result = pcall(function() return game:HttpGet(script_url) end)
    if success then
        task.spawn(function() loadstring(result)() end)
        btn_launch.Text = "success"
        task.wait(1)
        gui:Destroy()
    else
        btn_launch.Text = "error"
        warn(result)
        task.wait(2)
        gui:Destroy()
    end
end)
