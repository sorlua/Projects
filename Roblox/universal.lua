local s = {
    plrs = game:GetService("Players"),
    ws = game:GetService("Workspace"),
    rs = game:GetService("RunService"),
    uis = game:GetService("UserInputService"),
    light = game:GetService("Lighting"),
    http = game:GetService("HttpService"),
    tp = game:GetService("TeleportService"),
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
    Title = "sor.lua / universal",
    Center = true,
    AutoShow = true,
    TabPadding = 8
})

local tabs = {
    combat = win:AddTab("combat"),
    visuals = win:AddTab("visuals"),
    move = win:AddTab("movement"),
    world = win:AddTab("world"),
    dev = win:AddTab("dev"),
    cfg = win:AddTab("settings")
}

local aim_main = tabs.combat:AddLeftGroupbox("aimbot")
aim_main:AddToggle('aim_en', { Text = 'enabled', Default = false })
aim_main:AddLabel('bind'):AddKeyPicker('aim_bind', { Default = 'E', Mode = 'Hold', Text = 'aim bind' })
aim_main:AddDropdown('aim_method', { Values = {'camera', 'mouse'}, Default = 1, Text = 'method' })
aim_main:AddDropdown('aim_part', { Values = {'Head', 'HumanoidRootPart', 'UpperTorso'}, Default = 1, Text = 'part' })
aim_main:AddSlider('aim_smooth', { Text = 'smoothness', Default = 4, Min = 1, Max = 30, Rounding = 1 })
aim_main:AddToggle('aim_wall', { Text = 'wall check', Default = true })
aim_main:AddToggle('aim_team', { Text = 'team check', Default = true })
aim_main:AddToggle('aim_pred', { Text = 'prediction', Default = false })
aim_main:AddSlider('pred_val', { Text = 'velocity factor', Default = 5, Min = 1, Max = 20, Rounding = 1 })

local aim_fov = tabs.combat:AddRightGroupbox("fov")
aim_fov:AddToggle('fov_draw', { Text = 'draw fov', Default = true }):AddColorPicker('fov_col', { Default = Color3.fromRGB(255, 0, 43) })
aim_fov:AddSlider('fov_rad', { Text = 'radius', Default = 150, Min = 10, Max = 800, Rounding = 0 })
aim_fov:AddToggle('fov_fill', { Text = 'filled', Default = false })
aim_fov:AddSlider('fov_trans', { Text = 'transparency', Default = 0.5, Min = 0, Max = 1, Rounding = 2 })

local hit_box = tabs.combat:AddLeftGroupbox("hitbox")
hit_box:AddToggle('hit_en', { Text = 'enabled', Default = false })
hit_box:AddDropdown('hit_part', { Values = {'Head', 'HumanoidRootPart'}, Default = 1, Text = 'part' })
hit_box:AddSlider('hit_size', { Text = 'size', Default = 4, Min = 2, Max = 30, Rounding = 1 })
hit_box:AddSlider('hit_trans', { Text = 'transparency', Default = 0.5, Min = 0, Max = 1, Rounding = 1 })
hit_box:AddToggle('hit_team', { Text = 'team check', Default = true })

local trig_box = tabs.combat:AddRightGroupbox("trigger")
trig_box:AddToggle('trig_en', { Text = 'enabled', Default = false })
trig_box:AddLabel('bind'):AddKeyPicker('trig_bind', { Default = 'LeftAlt', Mode = 'Hold', Text = 'trigger bind' })
trig_box:AddSlider('trig_del', { Text = 'delay (ms)', Default = 0, Min = 0, Max = 500, Rounding = 0 })
trig_box:AddToggle('trig_team', { Text = 'team check', Default = true })

local esp_main = tabs.visuals:AddLeftGroupbox("esp")
esp_main:AddToggle('esp_mas', { Text = 'master switch', Default = false })
esp_main:AddToggle('esp_box', { Text = 'boxes', Default = true })
esp_main:AddToggle('esp_skel', { Text = 'skeletons', Default = false })
esp_main:AddToggle('esp_name', { Text = 'names', Default = false })
esp_main:AddToggle('esp_hp', { Text = 'health', Default = false })
esp_main:AddToggle('esp_dist', { Text = 'distance', Default = false })
esp_main:AddToggle('esp_trace', { Text = 'tracers', Default = false })

local cham_box = tabs.visuals:AddRightGroupbox("chams")
cham_box:AddToggle('cham_en', { Text = 'enabled', Default = false })
cham_box:AddLabel('visible'):AddColorPicker('cham_vis', { Default = Color3.fromRGB(255, 0, 43) })
cham_box:AddLabel('occluded'):AddColorPicker('cham_hid', { Default = Color3.fromRGB(100, 100, 100) })
cham_box:AddToggle('cham_wall', { Text = 'always on top', Default = true })
cham_box:AddToggle('cham_pulse', { Text = 'pulse effect', Default = false })

local cross_box = tabs.visuals:AddLeftGroupbox("view")
cross_box:AddToggle('cross_en', { Text = 'custom crosshair', Default = false }):AddColorPicker('cross_col', { Default = Color3.fromRGB(255, 0, 43) })
cross_box:AddSlider('cross_size', { Text = 'size', Default = 10, Min = 2, Max = 50, Rounding = 0 })
cross_box:AddSlider('cross_thick', { Text = 'thickness', Default = 1, Min = 1, Max = 5, Rounding = 0 })

local fly_box = tabs.move:AddLeftGroupbox("flight")
fly_box:AddToggle('fly_en', { Text = 'enable', Default = false })
fly_box:AddLabel('bind'):AddKeyPicker('fly_bind', { Default = 'F', NoUI = true, Text = 'fly bind' })
fly_box:AddDropdown('fly_mode', { Values = {'velocity', 'cframe', 'force'}, Default = 1, Text = 'mode' })
fly_box:AddSlider('fly_spd', { Text = 'speed', Default = 50, Min = 10, Max = 300, Rounding = 0 })

local spd_box = tabs.move:AddRightGroupbox("speed")
spd_box:AddToggle('spd_en', { Text = 'enable', Default = false })
spd_box:AddLabel('bind'):AddKeyPicker('spd_bind', { Default = 'V', NoUI = true, Text = 'speed bind' })
spd_box:AddDropdown('spd_mode', { Values = {'cframe', 'vector', 'walkspeed', 'tp'}, Default = 1, Text = 'method' })
spd_box:AddSlider('spd_val', { Text = 'factor', Default = 2, Min = 1, Max = 10, Rounding = 1 })

local misc_move = tabs.move:AddLeftGroupbox("misc")
misc_move:AddToggle('inf_jump', { Text = 'infinite jump', Default = false })
misc_move:AddToggle('noclip', { Text = 'noclip', Default = false })
misc_move:AddDropdown('no_mode', { Values = {'stepped', 'destroy'}, Default = 1, Text = 'method' })
misc_move:AddToggle('spin', { Text = 'spinbot', Default = false })
misc_move:AddSlider('spin_spd', { Text = 'speed', Default = 20, Min = 1, Max = 100, Rounding = 0 })

local env_box = tabs.world:AddLeftGroupbox("environment")
env_box:AddToggle('fullbright', { Text = 'fullbright', Default = false })
env_box:AddToggle('nofog', { Text = 'no fog', Default = false })
env_box:AddLabel('ambience'):AddColorPicker('amb_col', { Default = Color3.fromRGB(255, 255, 255) })
env_box:AddSlider('clock', { Text = 'clock time', Default = 12, Min = 0, Max = 24, Rounding = 1 })

local cam_box = tabs.world:AddRightGroupbox("camera")
cam_box:AddToggle('fov_en', { Text = 'fov changer', Default = false })
cam_box:AddSlider('fov_val', { Text = 'value', Default = 90, Min = 70, Max = 120, Rounding = 0 })
cam_box:AddDropdown('fov_meth', { Values = {'loop', 'once'}, Default = 1, Text = 'method' })

local serv_box = tabs.world:AddLeftGroupbox("server")
serv_box:AddInput('job_id', { Default = '', Text = 'job id', Placeholder = 'input id' })
serv_box:AddButton('join id', function()
    local id = lib.Options.job_id.Value
    if id ~= "" then s.tp:TeleportToPlaceInstance(game.PlaceId, id, lp) end
end)
serv_box:AddButton('rejoin', function() s.tp:Teleport(game.PlaceId, lp) end)
serv_box:AddButton('server hop', function()
    local x = {}
    local sc, r = pcall(function() 
        return s.http:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")) 
    end)
    if sc and r and r.data then
        for _, v in ipairs(r.data) do
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                table.insert(x, v.id)
            end
        end
        if #x > 0 then s.tp:TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)]) end
    end
end)

local dev_box = tabs.dev:AddLeftGroupbox("tools")
dev_box:AddButton('dex', function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"))() end)
dev_box:AddButton('spy', function() loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))() end)
dev_box:AddButton('iy', function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
dev_box:AddButton('console', function() game:GetService("StarterGui"):SetCore("DevConsoleVisible", true) end)

local function is_valid(p)
    return p and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 and p.Character:FindFirstChild("HumanoidRootPart")
end

local function get_closest(fov)
    local target, max_dist = nil, fov
    for _, p in pairs(s.plrs:GetPlayers()) do
        if p ~= lp and is_valid(p) then
            if lib.Toggles.aim_team.Value and p.Team == lp.Team then continue end
            local part = p.Character:FindFirstChild(lib.Options.aim_part.Value)
            if part then
                local pos, vis = cam:WorldToViewportPoint(part.Position)
                if vis then
                    local blocked = false
                    if lib.Toggles.aim_wall.Value then
                        local params = RaycastParams.new()
                        params.FilterDescendantsInstances = {lp.Character, cam}
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

local fov_circ = Drawing.new("Circle")
fov_circ.Thickness = 1
fov_circ.NumSides = 64
fov_circ.Filled = false
local locked = nil

s.rs.RenderStepped:Connect(function()
    fov_circ.Visible = lib.Toggles.fov_draw.Value
    fov_circ.Radius = lib.Options.fov_rad.Value
    fov_circ.Position = Vector2.new(mouse.X, mouse.Y + 36)
    fov_circ.Color = lib.Options.fov_col.Value
    fov_circ.Filled = lib.Toggles.fov_fill.Value
    fov_circ.Transparency = 1 - lib.Options.fov_trans.Value

    if lib.Toggles.aim_en.Value and lib.Options.aim_bind:GetState() then
        if not locked or not locked.Parent then
            locked = get_closest(lib.Options.fov_rad.Value)
        end
        if locked then
            local pos = locked.Position
            if lib.Toggles.aim_pred.Value and locked.Parent:FindFirstChild("HumanoidRootPart") then
                local vel = locked.Parent.HumanoidRootPart.Velocity
                pos = pos + (vel * (lib.Options.pred_val.Value / 100))
            end
            local meth = lib.Options.aim_method.Value
            if meth == 'camera' then
                cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, pos), 1 / lib.Options.aim_smooth.Value)
            elseif meth == 'mouse' then
                local screen = cam:WorldToViewportPoint(pos)
                local x = (screen.X - mouse.X) / lib.Options.aim_smooth.Value
                local y = (screen.Y - mouse.Y) / lib.Options.aim_smooth.Value
                mousemoverel(x, y)
            end
        end
    else
        locked = nil
    end
end)

task.spawn(function()
    while true do
        if lib.Toggles.trig_en.Value and lib.Options.trig_bind:GetState() then
            local t = mouse.Target
            if t and t.Parent then
                local p = s.plrs:GetPlayerFromCharacter(t.Parent)
                if p and p ~= lp then
                    if not lib.Toggles.trig_team.Value or p.Team ~= lp.Team then
                        if lib.Options.trig_del.Value > 0 then task.wait(lib.Options.trig_del.Value / 1000) end
                        s.vim:ClickButton1(Vector2.new())
                    end
                end
            end
        end
        task.wait(0.05)
    end
end)

s.rs.Heartbeat:Connect(function()
    if lib.Toggles.hit_en.Value then
        for _, p in pairs(s.plrs:GetPlayers()) do
            if p ~= lp and is_valid(p) then
                if not lib.Toggles.hit_team.Value or p.Team ~= lp.Team then
                    local part = p.Character:FindFirstChild(lib.Options.hit_part.Value)
                    if part then
                        part.Size = Vector3.new(lib.Options.hit_size.Value, lib.Options.hit_size.Value, lib.Options.hit_size.Value)
                        part.Transparency = lib.Options.hit_trans.Value
                        part.CanCollide = false
                    end
                end
            end
        end
    end
end)

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
        task.wait(0.5)
    end
end)

local cham_cache = {}
s.rs.RenderStepped:Connect(function()
    if lib.Toggles.cham_en.Value then
        for _, p in pairs(s.plrs:GetPlayers()) do
            if p ~= lp and is_valid(p) then
                if not cham_cache[p] then cham_cache[p] = {} end
                for _, part in pairs(p.Character:GetChildren()) do
                    if part:IsA("BasePart") and not part:FindFirstChild("sor_cham") then
                        local b = Instance.new("BoxHandleAdornment")
                        b.Name = "sor_cham"
                        b.Adornee = part
                        b.Size = part.Size
                        b.AlwaysOnTop = lib.Toggles.cham_wall.Value
                        b.ZIndex = 5
                        b.Transparency = 0.5
                        b.Color3 = lib.Options.cham_vis.Value
                        b.Parent = part
                        table.insert(cham_cache[p], b)
                    end
                end
                if lib.Toggles.cham_pulse.Value then
                    local t = 0.5 + math.sin(tick() * 5) * 0.2
                    for _, b in pairs(cham_cache[p]) do
                        if b.Parent then 
                            b.Transparency = t
                            if not b.AlwaysOnTop then b.Color3 = lib.Options.cham_hid.Value end
                        end
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

local cx = Drawing.new("Line")
local cy = Drawing.new("Line")
cx.Thickness = 1
cy.Thickness = 1

s.rs.RenderStepped:Connect(function()
    if lib.Toggles.cross_en.Value then
        local s_sz = lib.Options.cross_size.Value
        local c = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
        local t = lib.Options.cross_thick.Value
        cx.Visible = true; cy.Visible = true
        cx.Thickness = t; cy.Thickness = t
        cx.From = Vector2.new(c.X - s_sz, c.Y)
        cx.To = Vector2.new(c.X + s_sz, c.Y)
        cy.From = Vector2.new(c.X, c.Y - s_sz)
        cy.To = Vector2.new(c.X, c.Y + s_sz)
        cx.Color = lib.Options.cross_col.Value
        cy.Color = lib.Options.cross_col.Value
    else
        cx.Visible = false; cy.Visible = false
    end
end)

s.rs.RenderStepped:Connect(function()
    if is_valid(lp) then
        local root = lp.Character.HumanoidRootPart
        local hum = lp.Character.Humanoid
        
        if lib.Toggles.fly_en.Value and lib.Options.fly_bind:GetState() then
            local vel = root:FindFirstChild("sor_fly") or Instance.new("BodyVelocity", root)
            vel.Name = "sor_fly"
            vel.MaxForce = Vector3.new(9e9,9e9,9e9)
            local mode = lib.Options.fly_mode.Value
            local spd = lib.Options.fly_spd.Value
            if mode == 'velocity' then
                vel.Velocity = cam.CFrame.LookVector * spd
            elseif mode == 'cframe' then
                vel.Velocity = Vector3.zero
                root.CFrame = root.CFrame + (cam.CFrame.LookVector * (spd/50))
            elseif mode == 'force' then
                vel.Velocity = Vector3.zero 
                local f = root:FindFirstChild("sor_force") or Instance.new("VectorForce", root)
                f.Name = "sor_force"
                f.Force = cam.CFrame.LookVector * (spd * 100)
            end
        else
            if root:FindFirstChild("sor_fly") then root.sor_fly:Destroy() end
            if root:FindFirstChild("sor_force") then root.sor_force:Destroy() end
        end

        if lib.Toggles.spd_en.Value and lib.Options.spd_bind:GetState() and hum.MoveDirection.Magnitude > 0 then
            local mode = lib.Options.spd_mode.Value
            local pwr = lib.Options.spd_val.Value
            if mode == 'cframe' then
                root.CFrame = root.CFrame + (hum.MoveDirection * (pwr / 2))
            elseif mode == 'vector' then
                root.AssemblyLinearVelocity = hum.MoveDirection * (pwr * 50)
            elseif mode == 'walkspeed' then
                hum.WalkSpeed = 16 * pwr
            elseif mode == 'tp' then
                if tick() % 0.15 < 0.05 then
                    root.CFrame = root.CFrame + (hum.MoveDirection * (pwr * 2))
                end
            end
        else
            if not lib.Toggles.spd_en.Value then hum.WalkSpeed = 16 end
        end
        
        if lib.Toggles.spin.Value then
            root.AssemblyAngularVelocity = Vector3.new(0, lib.Options.spin_spd.Value, 0)
        end
        
        if lib.Toggles.noclip.Value then
            local mode = lib.Options.no_mode.Value
            for _, v in pairs(lp.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    if mode == 'stepped' then v.CanCollide = false end
                end
            end
        end
    end
    
    if lib.Toggles.inf_jump.Value and s.uis:IsKeyDown(Enum.KeyCode.Space) then
        if is_valid(lp) then
            lp.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            lp.Character.Humanoid:Move(Vector3.new(0,0.1,0))
        end
    end
end)

local fov_once = false
task.spawn(function()
    while true do
        if lib.Toggles.fullbright.Value then
            s.light.Brightness = 2
            s.light.ClockTime = lib.Options.clock.Value
            s.light.GlobalShadows = false
            s.light.Ambient = lib.Options.amb_col.Value
            s.light.OutdoorAmbient = lib.Options.amb_col.Value
        end
        if lib.Toggles.nofog.Value then s.light.FogEnd = 9e9 end
        if lib.Toggles.fov_en.Value then
            if lib.Options.fov_meth.Value == 'loop' then
                cam.FieldOfView = lib.Options.fov_val.Value
            elseif lib.Options.fov_meth.Value == 'once' and not fov_once then
                cam.FieldOfView = lib.Options.fov_val.Value
                fov_once = true
            end
        else
            fov_once = false
        end
        task.wait(0.5)
    end
end)

theme:SetLibrary(lib)
save:SetLibrary(lib)
save:IgnoreThemeSettings()
save:SetFolder("sor/universal")
save:BuildConfigSection(tabs.cfg)
theme:ApplyToTab(tabs.cfg)
save:LoadAutoloadConfig()

lib:Notify("sor.lua loaded", 5)
