local s = {
    plrs = game:GetService("Players"),
    ws = game:GetService("Workspace"),
    rs = game:GetService("RunService"),
    uis = game:GetService("UserInputService"),
    light = game:GetService("Lighting"),
    vim = game:GetService("VirtualUser"),
    ts = game:GetService("TweenService")
}

local lp = s.plrs.LocalPlayer
local mouse = lp:GetMouse()
local cam = s.ws.CurrentCamera

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local success, lib = pcall(function() return loadstring(game:HttpGet(repo .. 'Library.lua'))() end)
if not success then return end

local theme = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local save = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local esp_succ, esp = pcall(function() return loadstring(game:HttpGet('https://sirius.menu/sense'))() end)

local win = lib:CreateWindow({
    Title = "sor.lua / mm2",
    Center = true,
    AutoShow = true,
    TabPadding = 8
})

local tabs = {
    combat = win:AddTab("combat"),
    visuals = win:AddTab("visuals"),
    farm = win:AddTab("farming"),
    move = win:AddTab("movement"),
    world = win:AddTab("world"),
    cfg = win:AddTab("settings")
}

local aim_box = tabs.combat:AddLeftGroupbox("sheriff")
aim_box:AddToggle('aim_en', { Text = 'silent aim', Default = false })
aim_box:AddSlider('aim_fov', { Text = 'fov radius', Default = 100, Min = 10, Max = 500, Rounding = 0 })
aim_box:AddToggle('aim_draw', { Text = 'draw fov', Default = true }):AddColorPicker('aim_col', { Default = Color3.fromRGB(255, 0, 43) })
aim_box:AddSlider('aim_chance', { Text = 'hit chance', Default = 100, Min = 0, Max = 100, Rounding = 0 })

local murd_box = tabs.combat:AddRightGroupbox("murderer")
murd_box:AddToggle('kill_all', { Text = 'kill aura', Default = false })
murd_box:AddSlider('kill_dist', { Text = 'range', Default = 10, Min = 5, Max = 50, Rounding = 1 })
murd_box:AddToggle('hit_en', { Text = 'hitbox expander', Default = false })
murd_box:AddSlider('hit_size', { Text = 'size', Default = 4, Min = 2, Max = 15, Rounding = 1 })
murd_box:AddSlider('hit_trans', { Text = 'transparency', Default = 0.5, Min = 0, Max = 1, Rounding = 1 })

local esp_main = tabs.visuals:AddLeftGroupbox("esp")
esp_main:AddToggle('esp_mas', { Text = 'master switch', Default = false })
esp_main:AddToggle('esp_box', { Text = 'boxes', Default = false })
esp_main:AddToggle('esp_name', { Text = 'names', Default = false })
esp_main:AddToggle('esp_dist', { Text = 'distance', Default = false })
esp_main:AddToggle('esp_trace', { Text = 'tracers', Default = false })
esp_main:AddToggle('esp_gun', { Text = 'dropped gun esp', Default = true })

local cham_box = tabs.visuals:AddRightGroupbox("chams")
cham_box:AddToggle('cham_en', { Text = 'enabled', Default = false })
cham_box:AddToggle('cham_wall', { Text = 'always on top', Default = true })
cham_box:AddLabel('murderer'):AddColorPicker('cham_murd', { Default = Color3.fromRGB(255, 0, 43) })
cham_box:AddLabel('sheriff'):AddColorPicker('cham_sher', { Default = Color3.fromRGB(0, 100, 255) })
cham_box:AddLabel('innocent'):AddColorPicker('cham_inno', { Default = Color3.fromRGB(0, 255, 100) })

local view_box = tabs.visuals:AddLeftGroupbox("view")
view_box:AddToggle('fov_en', { Text = 'fov changer', Default = false })
view_box:AddSlider('fov_val', { Text = 'value', Default = 100, Min = 70, Max = 120, Rounding = 0 })
view_box:AddToggle('cross_en', { Text = 'custom crosshair', Default = false }):AddColorPicker('cross_col', { Default = Color3.fromRGB(255, 0, 43) })

local farm_box = tabs.farm:AddLeftGroupbox("coins")
farm_box:AddToggle('coin_farm', { Text = 'auto farm coins', Default = false })
farm_box:AddSlider('coin_spd', { Text = 'tween speed', Default = 15, Min = 5, Max = 50, Rounding = 0 })

local misc_farm = tabs.farm:AddRightGroupbox("misc")
misc_farm:AddToggle('auto_gun', { Text = 'auto grab gun', Default = false })

local move_main = tabs.move:AddLeftGroupbox("main")
move_main:AddToggle('spd_en', { Text = 'speed', Default = false })
    :AddKeyPicker('spd_bind', { Default = 'V', NoUI = true, Text = 'speed bind' })
move_main:AddSlider('spd_val', { Text = 'factor', Default = 2, Min = 1, Max = 5, Rounding = 1 })
move_main:AddToggle('fly_en', { Text = 'flight', Default = false })
    :AddKeyPicker('fly_bind', { Default = 'F', NoUI = true, Text = 'fly bind' })
move_main:AddSlider('fly_spd', { Text = 'speed', Default = 50, Min = 10, Max = 200, Rounding = 0 })

local world_box = tabs.world:AddLeftGroupbox("environment")
world_box:AddToggle('fullbright', { Text = 'fullbright', Default = false })
world_box:AddLabel('ambience'):AddColorPicker('amb_col', { Default = Color3.fromRGB(255, 255, 255) })

local roles = {}
local function get_role(p)
    if not p or not p.Character then return "Innocent" end
    local bp = p:FindFirstChild("Backpack")
    local char = p.Character
    
    if (bp and bp:FindFirstChild("Knife")) or char:FindFirstChild("Knife") then return "Murderer" end
    if (bp and (bp:FindFirstChild("Gun") or bp:FindFirstChild("Revolver"))) or (char:FindFirstChild("Gun") or char:FindFirstChild("Revolver")) then return "Sheriff" end
    
    return "Innocent"
end

local function get_role_color(role)
    if role == "Murderer" then return lib.Options.cham_murd.Value end
    if role == "Sheriff" then return lib.Options.cham_sher.Value end
    return lib.Options.cham_inno.Value
end

local function is_valid(p)
    return p and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 and p.Character:FindFirstChild("HumanoidRootPart")
end

task.spawn(function()
    while true do
        for _, p in pairs(s.plrs:GetPlayers()) do
            if p ~= lp then
                roles[p] = get_role(p)
            end
        end
        task.wait(1)
    end
end)

local sil_fov = Drawing.new("Circle")
sil_fov.Thickness = 1
sil_fov.NumSides = 64
sil_fov.Filled = false

s.rs.RenderStepped:Connect(function()
    sil_fov.Visible = lib.Toggles.aim_draw.Value
    sil_fov.Radius = lib.Options.aim_fov.Value
    sil_fov.Position = Vector2.new(mouse.X, mouse.Y + 36)
    sil_fov.Color = lib.Options.aim_col.Value
end)

local old_nc
old_nc = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if method == "Raycast" and lib.Toggles.aim_en.Value then
        local success, result = pcall(function()
            if get_role(lp) == "Sheriff" and math.random(0, 100) <= lib.Options.aim_chance.Value then
                local target = nil
                local max_dist = lib.Options.aim_fov.Value
                
                for _, p in pairs(s.plrs:GetPlayers()) do
                    if p ~= lp and is_valid(p) and roles[p] == "Murderer" then
                        local pos, vis = cam:WorldToViewportPoint(p.Character.Head.Position)
                        if vis then
                            local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                            if dist < max_dist then
                                target = p.Character.Head
                                max_dist = dist
                            end
                        end
                    end
                end
                
                if target then
                    args[2] = (target.Position - args[1]).Unit * 1000
                    return true 
                end
            end
            return false
        end)
        
        if success and result then
            return old_nc(self, unpack(args))
        end
    end
    
    return old_nc(self, ...)
end))

local farming = false
task.spawn(function()
    while true do
        if lib.Toggles.coin_farm.Value and is_valid(lp) then
            farming = true
            local coin_container = s.ws:FindFirstChild("Normal") and s.ws.Normal:FindFirstChild("CoinContainer")
            local found = false
            
            if coin_container then
                for _, coin in pairs(coin_container:GetChildren()) do
                    if coin:IsA("BasePart") and coin.Name == "Coin_Server" and coin.Transparency == 0 then
                        if not lib.Toggles.coin_farm.Value then break end
                        if not is_valid(lp) then break end
                        
                        found = true
                        local root = lp.Character.HumanoidRootPart
                        local dist = (root.Position - coin.Position).Magnitude
                        local speed = lib.Options.coin_spd.Value
                        local info = TweenInfo.new(dist / speed, Enum.EasingStyle.Linear)
                        local tween = s.ts:Create(root, info, {CFrame = coin.CFrame})
                        
                        tween:Play()
                        tween.Completed:Wait()
                        
                        if is_valid(lp) then
                            firetouchinterest(root, coin, 0)
                            firetouchinterest(root, coin, 1)
                        end
                    end
                end
            end
            
            if not found then task.wait(1) end
        else
            if farming and is_valid(lp) then
                if s.ws:FindFirstChild("Tween") then s.ws.Tween:Destroy() end
                farming = false
            end
            task.wait(0.5)
        end
        task.wait()
    end
end)

task.spawn(function()
    while true do
        if lib.Toggles.auto_gun.Value and is_valid(lp) and get_role(lp) == "Innocent" then
            local gun = s.ws:FindFirstChild("GunDrop")
            if gun then
                local root = lp.Character.HumanoidRootPart
                local dist = (root.Position - gun.Position).Magnitude
                if dist > 5 then
                    root.CFrame = gun.CFrame
                end
            end
        end
        task.wait(0.5)
    end
end)

s.rs.Heartbeat:Connect(function()
    if lib.Toggles.hit_en.Value then
        for _, p in pairs(s.plrs:GetPlayers()) do
            if p ~= lp and is_valid(p) then
                local head = p.Character:FindFirstChild("Head")
                if head then
                    head.Size = Vector3.new(lib.Options.hit_size.Value, lib.Options.hit_size.Value, lib.Options.hit_size.Value)
                    head.Transparency = lib.Options.hit_trans.Value
                    head.CanCollide = false
                end
            end
        end
    end
    
    if lib.Toggles.kill_all.Value and get_role(lp) == "Murderer" and is_valid(lp) then
        local knife = lp.Character:FindFirstChild("Knife")
        if knife then
            for _, p in pairs(s.plrs:GetPlayers()) do
                if p ~= lp and is_valid(p) then
                    local dist = (lp.Character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
                    if dist < lib.Options.kill_dist.Value then
                        if knife.Parent == lp.Character then
                            knife:Activate()
                            firetouchinterest(knife.Handle, p.Character.HumanoidRootPart, 0)
                            firetouchinterest(knife.Handle, p.Character.HumanoidRootPart, 1)
                        end
                    end
                end
            end
        end
    end
end)

if esp_succ then
    task.spawn(function()
        esp.Load()
        while true do
            esp.teamSettings.enemy.enabled = lib.Toggles.esp_mas.Value
            esp.teamSettings.enemy.box = lib.Toggles.esp_box.Value
            esp.teamSettings.enemy.name = lib.Toggles.esp_name.Value
            esp.teamSettings.enemy.distance = lib.Toggles.esp_dist.Value
            esp.teamSettings.enemy.tracer = lib.Toggles.esp_trace.Value
            task.wait(0.5)
        end
    end)
end

local cham_cache = {}
local gun_esp = nil
local cross_x = Drawing.new("Line")
local cross_y = Drawing.new("Line")
cross_x.Thickness = 1; cross_y.Thickness = 1

s.rs.RenderStepped:Connect(function()
    if lib.Toggles.cham_en.Value then
        for _, p in pairs(s.plrs:GetPlayers()) do
            if p ~= lp and is_valid(p) then
                if not cham_cache[p] then cham_cache[p] = {} end
                local role = roles[p] or "Innocent"
                local color = get_role_color(role)
                
                for _, part in pairs(p.Character:GetChildren()) do
                    if part:IsA("BasePart") and not part:FindFirstChild("sor_cham") then
                        local b = Instance.new("BoxHandleAdornment")
                        b.Name = "sor_cham"; b.Adornee = part; b.Size = part.Size
                        b.AlwaysOnTop = lib.Toggles.cham_wall.Value; b.ZIndex = 5
                        b.Transparency = 0.5; b.Color3 = color
                        b.Parent = part
                        table.insert(cham_cache[p], b)
                    elseif part:FindFirstChild("sor_cham") then
                        part.sor_cham.Color3 = color
                        part.sor_cham.AlwaysOnTop = lib.Toggles.cham_wall.Value
                    end
                end
            end
        end
    else
        for p, list in pairs(cham_cache) do
            for _, v in pairs(list) do v:Destroy() end
            cham_cache[p] = nil
        end
    end
    
    if lib.Toggles.esp_gun.Value then
        local gun = s.ws:FindFirstChild("GunDrop")
        if gun then
            if not gun_esp then
                gun_esp = Drawing.new("Text")
                gun_esp.Center = true; gun_esp.Outline = true; gun_esp.Color = Color3.fromRGB(0, 255, 255)
            end
            local pos, vis = cam:WorldToViewportPoint(gun.Position)
            if vis then
                gun_esp.Visible = true
                gun_esp.Position = Vector2.new(pos.X, pos.Y)
                gun_esp.Text = "GUN DROP [" .. math.floor((lp.Character.HumanoidRootPart.Position - gun.Position).Magnitude) .. "m]"
            else
                gun_esp.Visible = false
            end
        else
            if gun_esp then gun_esp.Visible = false end
        end
    else
        if gun_esp then gun_esp.Visible = false end
    end
    
    if is_valid(lp) then
        local root = lp.Character.HumanoidRootPart
        local hum = lp.Character.Humanoid
        
        if lib.Toggles.spd_en.Value and lib.Options.spd_bind:GetState() then
            root.CFrame = root.CFrame + (hum.MoveDirection * (lib.Options.spd_val.Value / 2))
        end
        
        if lib.Toggles.fly_en.Value and lib.Options.fly_bind:GetState() then
            local vel = root:FindFirstChild("sor_fly") or Instance.new("BodyVelocity", root)
            vel.Name = "sor_fly"; vel.MaxForce = Vector3.new(9e9,9e9,9e9)
            vel.Velocity = cam.CFrame.LookVector * lib.Options.fly_spd.Value
        else
            if root:FindFirstChild("sor_fly") then root.sor_fly:Destroy() end
        end
    end
    
    if lib.Toggles.fullbright.Value then
        s.light.Brightness = 2; s.light.ClockTime = 12; s.light.Ambient = lib.Options.amb_col.Value
    end
    
    if lib.Toggles.fov_en.Value then cam.FieldOfView = lib.Options.fov_val.Value end
    
    if lib.Toggles.cross_en.Value then
        local c = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
        cross_x.Visible = true; cross_y.Visible = true
        cross_x.From = Vector2.new(c.X - 10, c.Y); cross_x.To = Vector2.new(c.X + 10, c.Y)
        cross_y.From = Vector2.new(c.X, c.Y - 10); cross_y.To = Vector2.new(c.X, c.Y + 10)
        cross_x.Color = lib.Options.cross_col.Value; cross_y.Color = lib.Options.cross_col.Value
    else
        cross_x.Visible = false; cross_y.Visible = false
    end
end)

theme:SetLibrary(lib)
save:SetLibrary(lib)
save:IgnoreThemeSettings()
save:SetFolder("sor/mm2")
save:BuildConfigSection(tabs.cfg)
theme:ApplyToTab(tabs.cfg)
save:LoadAutoloadConfig()

lib:Notify("sor.lua [mm2] loaded", 5)
