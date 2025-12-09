local s = {
    plrs = game:GetService("Players"),
    ws = game:GetService("Workspace"),
    rs = game:GetService("RunService"),
    uis = game:GetService("UserInputService"),
    light = game:GetService("Lighting"),
    rep = game:GetService("ReplicatedStorage"),
    vim = game:GetService("VirtualUser")
}

local lp = s.plrs.LocalPlayer
local mouse = lp:GetMouse()
local cam = s.ws.CurrentCamera

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local lib = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local theme = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local save = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local esp = loadstring(game:HttpGet('https://sirius.menu/sense'))()

local win = lib:CreateWindow({
    Title = "sor.lua / arsenal",
    Center = true,
    AutoShow = true,
    TabPadding = 8
})

local tabs = {
    combat = win:AddTab("combat"),
    gun = win:AddTab("gun mods"),
    visuals = win:AddTab("visuals"),
    move = win:AddTab("movement"),
    world = win:AddTab("world"),
    cfg = win:AddTab("settings")
}

local aim_box = tabs.combat:AddLeftGroupbox("aimbot")
aim_box:AddToggle('aim_en', { Text = 'enabled', Default = false })
aim_box:AddLabel('bind'):AddKeyPicker('aim_bind', { Default = 'MouseButton2', Mode = 'Hold', Text = 'aim bind' })
aim_box:AddDropdown('aim_part', { Values = {'Head', 'UpperTorso', 'HumanoidRootPart'}, Default = 1, Text = 'part' })
aim_box:AddSlider('aim_smooth', { Text = 'smoothness', Default = 1, Min = 1, Max = 10, Rounding = 1 })
aim_box:AddToggle('aim_wall', { Text = 'wall check', Default = true })
aim_box:AddToggle('aim_team', { Text = 'team check', Default = true })

local sil_box = tabs.combat:AddRightGroupbox("silent aim")
sil_box:AddToggle('sil_en', { Text = 'enabled', Default = false })
sil_box:AddSlider('sil_fov', { Text = 'fov', Default = 100, Min = 10, Max = 500, Rounding = 0 })
sil_box:AddToggle('sil_draw', { Text = 'draw fov', Default = true }):AddColorPicker('sil_col', { Default = Color3.fromRGB(255, 0, 43) })
sil_box:AddSlider('sil_chance', { Text = 'hit chance', Default = 100, Min = 0, Max = 100, Rounding = 0 })

local hit_box = tabs.combat:AddLeftGroupbox("hitbox")
hit_box:AddToggle('hit_en', { Text = 'expander', Default = false })
hit_box:AddDropdown('hit_part', { Values = {'Head', 'HumanoidRootPart'}, Default = 1, Text = 'part' })
hit_box:AddSlider('hit_size', { Text = 'size', Default = 4, Min = 2, Max = 30, Rounding = 1 })
hit_box:AddSlider('hit_trans', { Text = 'transparency', Default = 0.5, Min = 0, Max = 1, Rounding = 1 })

local gun_box = tabs.gun:AddLeftGroupbox("main")
gun_box:AddToggle('no_recoil', { Text = 'no recoil', Default = false })
gun_box:AddToggle('no_spread', { Text = 'no spread', Default = false })
gun_box:AddToggle('inf_ammo', { Text = 'infinite ammo (visual)', Default = false })
gun_box:AddToggle('auto_fire', { Text = 'auto fire', Default = false })
gun_box:AddSlider('fire_rate', { Text = 'fire rate mod', Default = 0, Min = 0, Max = 100, Rounding = 0 })

local esp_main = tabs.visuals:AddLeftGroupbox("esp")
esp_main:AddToggle('esp_mas', { Text = 'master switch', Default = false })
esp_main:AddToggle('esp_box', { Text = 'boxes', Default = true })
esp_main:AddToggle('esp_skel', { Text = 'skeletons', Default = false })
esp_main:AddToggle('esp_name', { Text = 'names', Default = false })
esp_main:AddToggle('esp_hp', { Text = 'health', Default = false })
esp_main:AddToggle('esp_dist', { Text = 'distance', Default = false })
esp_main:AddToggle('esp_trace', { Text = 'tracers', Default = false })
esp_main:AddLabel('color'):AddColorPicker('esp_col', { Default = Color3.fromRGB(255, 0, 43) })

local cham_box = tabs.visuals:AddRightGroupbox("chams")
cham_box:AddToggle('cham_en', { Text = 'enabled', Default = false })
cham_box:AddLabel('visible'):AddColorPicker('cham_vis', { Default = Color3.fromRGB(255, 0, 43) })
cham_box:AddLabel('occluded'):AddColorPicker('cham_hid', { Default = Color3.fromRGB(100, 100, 100) })
cham_box:AddToggle('cham_wall', { Text = 'always on top', Default = true })

local view_box = tabs.visuals:AddLeftGroupbox("view")
view_box:AddToggle('fov_en', { Text = 'fov changer', Default = false })
view_box:AddSlider('fov_val', { Text = 'value', Default = 100, Min = 70, Max = 120, Rounding = 0 })
view_box:AddToggle('cross_en', { Text = 'custom crosshair', Default = false }):AddColorPicker('cross_col', { Default = Color3.fromRGB(255, 0, 43) })

local move_main = tabs.move:AddLeftGroupbox("main")
move_main:AddToggle('spd_en', { Text = 'speed', Default = false })
move_main:AddKeyPicker('spd_bind', { Default = 'V', NoUI = true, Text = 'speed bind' })
move_main:AddSlider('spd_val', { Text = 'factor', Default = 2, Min = 1, Max = 5, Rounding = 1 })
move_main:AddToggle('fly_en', { Text = 'flight', Default = false })
move_main:AddKeyPicker('fly_bind', { Default = 'F', NoUI = true, Text = 'fly bind' })
move_main:AddSlider('fly_spd', { Text = 'speed', Default = 50, Min = 10, Max = 200, Rounding = 0 })
move_main:AddToggle('bhop', { Text = 'bhop', Default = false })

local world_box = tabs.world:AddLeftGroupbox("environment")
world_box:AddToggle('fullbright', { Text = 'fullbright', Default = false })
world_box:AddToggle('nofog', { Text = 'no fog', Default = false })
world_box:AddLabel('ambience'):AddColorPicker('amb_col', { Default = Color3.fromRGB(255, 255, 255) })

local function is_valid(p)
    return p and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChild("Head")
end

local function is_team(p)
    if not lib.Toggles.aim_team.Value then return false end
    if lp.Team and p.Team and lp.Team == p.Team then return true end
    if lp.TeamColor and p.TeamColor and lp.TeamColor == p.TeamColor then return true end
    return false
end

local function get_closest(fov)
    local target, max_dist = nil, fov
    for _, p in pairs(s.plrs:GetPlayers()) do
        if p ~= lp and is_valid(p) and not is_team(p) then
            local part = p.Character:FindFirstChild(lib.Options.aim_part.Value) or p.Character:FindFirstChild("Head")
            if part then
                local pos, vis = cam:WorldToViewportPoint(part.Position)
                if vis then
                    local blocked = false
                    if lib.Toggles.aim_wall.Value then
                        local params = RaycastParams.new()
                        params.FilterDescendantsInstances = {lp.Character, cam, s.ws.Ray_Ignore}
                        params.FilterType = Enum.RaycastFilterType.Exclude
                        local hit = s.ws:Raycast(cam.CFrame.Position, part.Position - cam.CFrame.Position, params)
                        if hit and not hit.Instance:IsDescendantOf(p.Character) then blocked = true end
                    end
                    
                    if not blocked then
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                        if dist < max_dist then
                            max_dist = dist
                            target = part
                        end
                    end
                end
            end
        end
    end
    return target
end

local function get_closest_sil(fov)
    local target, max_dist = nil, fov
    for _, p in pairs(s.plrs:GetPlayers()) do
        if p ~= lp and is_valid(p) and not is_team(p) then
            local part = p.Character:FindFirstChild("Head")
            if part then
                local pos, vis = cam:WorldToViewportPoint(part.Position)
                if vis then
                    local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                    if dist < max_dist then
                        max_dist = dist
                        target = part
                    end
                end
            end
        end
    end
    return target
end

-- aimbot loop
local sil_fov = Drawing.new("Circle")
sil_fov.Thickness = 1
sil_fov.NumSides = 64
sil_fov.Filled = false
local locked = nil

s.rs.RenderStepped:Connect(function()
    sil_fov.Visible = lib.Toggles.sil_draw.Value
    sil_fov.Radius = lib.Options.sil_fov.Value
    sil_fov.Position = Vector2.new(mouse.X, mouse.Y + 36)
    sil_fov.Color = lib.Options.sil_col.Value
    
    -- legit aim
    if lib.Toggles.aim_en.Value and lib.Options.aim_bind:GetState() then
        locked = get_closest(200)
        if locked then
            local goal = CFrame.new(cam.CFrame.Position, locked.Position)
            cam.CFrame = cam.CFrame:Lerp(goal, 1 / lib.Options.aim_smooth.Value)
        end
    end

    -- gun mods
    if is_valid(lp) then
        if lib.Toggles.no_recoil.Value then
            cam.CFrame = cam.CFrame * CFrame.Angles(0,0,0) -- crude visual fix, real recoil is script based
        end
    end
end)

-- silent aim hook
local old_nc
old_nc = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if method == "Raycast" and lib.Toggles.sil_en.Value then
        if math.random(0, 100) <= lib.Options.sil_chance.Value then
            local target = get_closest_sil(lib.Options.sil_fov.Value)
            if target then
                args[2] = (target.Position - args[1]).Unit * 1000
                return old_nc(self, unpack(args))
            end
        end
    end
    
    return old_nc(self, ...)
end))

-- hitbox
s.rs.Heartbeat:Connect(function()
    if lib.Toggles.hit_en.Value then
        for _, p in pairs(s.plrs:GetPlayers()) do
            if p ~= lp and is_valid(p) and not is_team(p) then
                local part = p.Character:FindFirstChild(lib.Options.hit_part.Value)
                if part then
                    part.Size = Vector3.new(lib.Options.hit_size.Value, lib.Options.hit_size.Value, lib.Options.hit_size.Value)
                    part.Transparency = lib.Options.hit_trans.Value
                    part.CanCollide = false
                end
            end
        end
    end
end)

-- movement
s.rs.RenderStepped:Connect(function()
    if is_valid(lp) then
        local root = lp.Character.HumanoidRootPart
        local hum = lp.Character.Humanoid
        
        if lib.Toggles.spd_en.Value and lib.Options.spd_bind:GetState() then
            root.CFrame = root.CFrame + (hum.MoveDirection * (lib.Options.spd_val.Value / 2))
        end
        
        if lib.Toggles.fly_en.Value and lib.Options.fly_bind:GetState() then
            local vel = root:FindFirstChild("sor_fly") or Instance.new("BodyVelocity", root)
            vel.Name = "sor_fly"
            vel.MaxForce = Vector3.new(9e9,9e9,9e9)
            vel.Velocity = cam.CFrame.LookVector * lib.Options.fly_spd.Value
        else
            if root:FindFirstChild("sor_fly") then root.sor_fly:Destroy() end
        end
        
        if lib.Toggles.bhop.Value and s.uis:IsKeyDown(Enum.KeyCode.Space) then
             if hum.FloorMaterial == Enum.Material.Air then
                 hum:ChangeState(Enum.HumanoidStateType.Jumping)
             end
        end
    end
end)

-- visuals logic
local cross_x = Drawing.new("Line")
local cross_y = Drawing.new("Line")
cross_x.Thickness = 1; cross_y.Thickness = 1

s.rs.RenderStepped:Connect(function()
    if lib.Toggles.cross_en.Value then
        local c = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
        cross_x.Visible = true; cross_y.Visible = true
        cross_x.From = Vector2.new(c.X - 10, c.Y); cross_x.To = Vector2.new(c.X + 10, c.Y)
        cross_y.From = Vector2.new(c.X, c.Y - 10); cross_y.To = Vector2.new(c.X, c.Y + 10)
        cross_x.Color = lib.Options.cross_col.Value; cross_y.Color = lib.Options.cross_col.Value
    else
        cross_x.Visible = false; cross_y.Visible = false
    end
    
    if lib.Toggles.fov_en.Value then
        cam.FieldOfView = lib.Options.fov_val.Value
    end
    
    if lib.Toggles.fullbright.Value then
        s.light.Brightness = 2
        s.light.ClockTime = 12
        s.light.Ambient = lib.Options.amb_col.Value
    end
end)

-- esp
task.spawn(function()
    esp.Load()
    while true do
        esp.teamSettings.enemy.enabled = lib.Toggles.esp_mas.Value
        esp.teamSettings.enemy.box = lib.Toggles.esp_box.Value
        esp.teamSettings.enemy.skeleton = lib.Toggles.esp_skel.Value
        esp.teamSettings.enemy.name = lib.Toggles.esp_name.Value
        esp.teamSettings.enemy.healthBar = lib.Toggles.esp_hp.Value
        esp.teamSettings.enemy.tracer = lib.Toggles.esp_trace.Value
        esp.teamSettings.enemy.distance = lib.Toggles.esp_dist.Value
        esp.teamSettings.enemy.boxColor = lib.Options.esp_col.Value
        task.wait(0.5)
    end
end)

local cham_cache = {}
s.rs.RenderStepped:Connect(function()
    if lib.Toggles.cham_en.Value then
        for _, p in pairs(s.plrs:GetPlayers()) do
            if p ~= lp and is_valid(p) and not is_team(p) then
                if not cham_cache[p] then cham_cache[p] = {} end
                for _, part in pairs(p.Character:GetChildren()) do
                    if part:IsA("BasePart") and not part:FindFirstChild("sor_cham") then
                        local b = Instance.new("BoxHandleAdornment")
                        b.Name = "sor_cham"; b.Adornee = part; b.Size = part.Size
                        b.AlwaysOnTop = lib.Toggles.cham_wall.Value; b.ZIndex = 5
                        b.Transparency = 0.5; b.Color3 = lib.Options.cham_vis.Value
                        b.Parent = part
                        table.insert(cham_cache[p], b)
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
end)

theme:SetLibrary(lib)
save:SetLibrary(lib)
save:IgnoreThemeSettings()
save:SetFolder("sor/arsenal")
save:BuildConfigSection(tabs.cfg)
theme:ApplyToTab(tabs.cfg)
save:LoadAutoloadConfig()

lib:Notify("sor.lua [arsenal] loaded", 5)
