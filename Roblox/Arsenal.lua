--[[
    sor.lua // arsenal [industrialist_final]
    repo: itssor/public-builds
    library: obsidian
    esp: sirius_sense
]]

local Services = {
    Workspace = game:GetService("Workspace"),
    Players = game:GetService("Players"),
    RunService = game:GetService("RunService"),
    UserInputService = game:GetService("UserInputService"),
    Camera = game:GetService("Workspace").CurrentCamera,
    VirtualUser = game:GetService("VirtualUser"),
    ReplicatedStorage = game:GetService("ReplicatedStorage")
}

local LocalPlayer = Services.Players.LocalPlayer

-- // 1. LOAD LIBRARIES
local Repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(Repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(Repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(Repo .. 'addons/SaveManager.lua'))()

-- Load Sirius Sense ESP
local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()

local Window = Library:CreateWindow({
    Title = "sor.lua",
    Center = true, AutoShow = true, TabPadding = 8
})

local Tabs = {
    Combat = Window:AddTab("combat"),
    Visuals = Window:AddTab("visuals"),
    Movement = Window:AddTab("movement"),
    Settings = Window:AddTab("system")
}

-- // 2. COMBAT TAB
local GunGroup = Tabs.Combat:AddLeftGroupbox("gun mods")
GunGroup:AddToggle('RapidFire', { Text = 'rapid fire', Default = false })
GunGroup:AddToggle('AutoReload', { Text = 'instant reload', Default = false })
GunGroup:AddToggle('AlwaysAuto', { Text = 'always auto', Default = false })

local HitboxGroup = Tabs.Combat:AddRightGroupbox("hitboxes")
HitboxGroup:AddToggle('Hitbox', { Text = 'expand hitboxes', Default = false })
HitboxGroup:AddSlider('HitboxSize', { Text = 'size', Default = 4, Min = 2, Max = 25, Rounding = 1 })
HitboxGroup:AddSlider('HitboxTrans', { Text = 'transparency', Default = 0.5, Min = 0, Max = 1, Rounding = 1 })

-- // 3. VISUALS TAB
local EspGroup = Tabs.Visuals:AddLeftGroupbox("sense esp")
EspGroup:AddToggle('EspEnabled', { Text = 'master switch', Default = false })
EspGroup:AddToggle('EspBox', { Text = 'boxes', Default = true })
EspGroup:AddToggle('EspSkeleton', { Text = 'skeletons', Default = false })
EspGroup:AddToggle('EspHealth', { Text = 'health bar', Default = false })
EspGroup:AddToggle('EspName', { Text = 'names', Default = false })
EspGroup:AddToggle('EspTracers', { Text = 'tracers', Default = false })
EspGroup:AddToggle('EspDistance', { Text = 'distance', Default = false })

local WorldGroup = Tabs.Visuals:AddRightGroupbox("viewmodel")
WorldGroup:AddToggle('RainbowGun', { Text = 'rainbow gun', Default = false })
WorldGroup:AddToggle('InvisGun', { Text = 'invisible gun', Default = false })
WorldGroup:AddSlider('Fov', { Text = 'field of view', Default = 90, Min = 70, Max = 120, Rounding = 0 })

-- // 4. MOVEMENT TAB
local FlyGroup = Tabs.Movement:AddLeftGroupbox("flight")
FlyGroup:AddDropdown('FlyMode', { Values = { 'Linear', 'CFrame', 'VectorForce' }, Default = 1, Text = 'mode' })
FlyGroup:AddToggle('FlyEnabled', { Text = 'enable flight', Default = false }):AddKeyPicker('FlyKey', { Default = 'F', NoUI = true, Mode = 'Toggle', SyncToggleState = true })
FlyGroup:AddSlider('FlySpeed', { Text = 'speed', Default = 50, Min = 10, Max = 300, Rounding = 0 })

local SpeedGroup = Tabs.Movement:AddRightGroupbox("speed")
SpeedGroup:AddDropdown('SpeedMode', { Values = { 'CFrame', 'Velocity', 'WalkSpeed' }, Default = 1, Text = 'mode' })
SpeedGroup:AddToggle('SpeedEnabled', { Text = 'enable speed', Default = false }):AddKeyPicker('SpeedKey', { Default = 'V', NoUI = true, Mode = 'Toggle', SyncToggleState = true })
SpeedGroup:AddSlider('SpeedVal', { Text = 'power', Default = 2, Min = 1, Max = 20, Rounding = 1 })

local MiscMove = Tabs.Movement:AddLeftGroupbox("misc")
MiscMove:AddToggle('InfJump', { Text = 'infinite jump', Default = false })
MiscMove:AddToggle('Bhop', { Text = 'bhop', Default = false })

-- // LOGIC IMPLEMENTATION //

-- ESP SYNC
task.spawn(function()
    Sense.Load()
    while true do
        Sense.sharedSettings.useTeamColor = true
        Sense.teamSettings.enemy.enabled = Library.Toggles.EspEnabled.Value
        Sense.teamSettings.enemy.box = Library.Toggles.EspBox.Value
        Sense.teamSettings.enemy.skeleton = Library.Toggles.EspSkeleton.Value
        Sense.teamSettings.enemy.healthBar = Library.Toggles.EspHealth.Value
        Sense.teamSettings.enemy.name = Library.Toggles.EspName.Value
        Sense.teamSettings.enemy.tracer = Library.Toggles.EspTracers.Value
        Sense.teamSettings.enemy.distance = Library.Toggles.EspDistance.Value
        Sense.teamSettings.friendly.enabled = false
        task.wait(0.2)
    end
end)

-- GUN MODS (DEBUG HOOKS)
-- We use debug.setupvalue to force cooldowns to 0
task.spawn(function()
    while true do
        if Library.Toggles.RapidFire.Value or Library.Toggles.AlwaysAuto.Value then
            pcall(function()
                local ClientEnv = getsenv(LocalPlayer.PlayerGui.GUI.Client)
                if ClientEnv and ClientEnv.FireWeapon then
                    -- Index 1 or 2 is usually the 'debounce' or 'lastfired' variable
                    debug.setupvalue(ClientEnv.FireWeapon, 1, 0) 
                    debug.setupvalue(ClientEnv.FireWeapon, 2, 0)
                end
            end)
        end
        
        if Library.Toggles.AutoReload.Value then
            pcall(function()
                local ClientEnv = getsenv(LocalPlayer.PlayerGui.GUI.Client)
                if ClientEnv and ClientEnv.Reload then
                    -- Index 1 is often the 'isReloading' check
                    debug.setupvalue(ClientEnv.Reload, 1, false)
                end
            end)
        end
        task.wait(0.5)
    end
end)

-- VIEWMODEL MODS
task.spawn(function()
    while true do
        local Cam = Services.Camera
        -- Arsenal uses either 'Arms' or 'Viewmodel' depending on the update/version
        local Viewmodel = Cam:FindFirstChild("Arms") or Cam:FindFirstChild("Viewmodel")
        
        if Viewmodel then
            if Library.Toggles.RainbowGun.Value then
                local Hue = tick() % 5 / 5
                local Color = Color3.fromHSV(Hue, 1, 1)
                for _, v in pairs(Viewmodel:GetDescendants()) do
                    if v:IsA("MeshPart") or v:IsA("BasePart") then
                        v.Color = Color
                        v.Material = Enum.Material.ForceField
                    end
                end
            end
            
            if Library.Toggles.InvisGun.Value then
                for _, v in pairs(Viewmodel:GetDescendants()) do
                    if v:IsA("MeshPart") or v:IsA("BasePart") or v:IsA("Texture") then
                        if v:IsA("BasePart") then v.Transparency = 1 end
                        if v:IsA("Texture") then v.Transparency = 1 end
                    end
                end
            end
        end
        task.wait()
    end
end)

-- FLIGHT LOGIC (IMPROVED)
local FlightBody = {
    Vel = Instance.new("BodyVelocity"),
    Gyro = Instance.new("BodyGyro")
}
FlightBody.Vel.MaxForce = Vector3.new(9e9, 9e9, 9e9)
FlightBody.Gyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)

Services.RunService.RenderStepped:Connect(function()
    local Char = LocalPlayer.Character
    local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
    
    if Library.Toggles.FlyEnabled.Value and HRP then
        FlightBody.Vel.Parent = HRP
        FlightBody.Gyro.Parent = HRP
        FlightBody.Gyro.CFrame = Services.Camera.CFrame
        
        local Speed = Library.Options.FlySpeed.Value
        
        if Library.Options.FlyMode.Value == 'Linear' then
            local Move = Vector3.zero
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.W) then Move = Move + Services.Camera.CFrame.LookVector end
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.S) then Move = Move - Services.Camera.CFrame.LookVector end
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.A) then Move = Move - Services.Camera.CFrame.RightVector end
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.D) then Move = Move + Services.Camera.CFrame.RightVector end
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.Space) then Move = Move + Vector3.new(0,1,0) end
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then Move = Move - Vector3.new(0,1,0) end
            FlightBody.Vel.Velocity = Move * Speed
            
        elseif Library.Options.FlyMode.Value == 'CFrame' then
            FlightBody.Vel.Velocity = Vector3.zero -- Float
            local Move = Vector3.zero
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.W) then Move = Move + Services.Camera.CFrame.LookVector end
            if Services.UserInputService:IsKeyDown(Enum.KeyCode.S) then Move = Move - Services.Camera.CFrame.LookVector end
            HRP.CFrame = HRP.CFrame + (Move * (Speed / 60))
            
        elseif Library.Options.FlyMode.Value == 'VectorForce' then
            -- Smoother gliding
            FlightBody.Vel.Velocity = Services.Camera.CFrame.LookVector * Speed
        end
    else
        FlightBody.Vel.Parent = nil
        FlightBody.Gyro.Parent = nil
    end
    
    -- SPEED
    if Library.Toggles.SpeedEnabled.Value and HRP then
        local MoveDir = Char.Humanoid.MoveDirection
        if Library.Options.SpeedMode.Value == 'CFrame' then
            HRP.CFrame = HRP.CFrame + (MoveDir * (Library.Options.SpeedVal.Value / 2))
        elseif Library.Options.SpeedMode.Value == 'Velocity' then
            HRP.AssemblyLinearVelocity = MoveDir * (Library.Options.SpeedVal.Value * 50)
        elseif Library.Options.SpeedMode.Value == 'WalkSpeed' then
            Char.Humanoid.WalkSpeed = 16 * Library.Options.SpeedVal.Value
        end
    end
end)

-- MISC MOVEMENT
Services.RunService.RenderStepped:Connect(function()
    if Library.Toggles.InfJump.Value and Services.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        LocalPlayer.Character.Humanoid:Move(Vector3.new(0,0.1,0))
    end
    
    if Library.Toggles.Bhop.Value and LocalPlayer.Character then
        if LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air then
            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
    
    Services.Camera.FieldOfView = Library.Options.Fov.Value
end)

-- HITBOX EXPANDER
task.spawn(function()
    while true do
        if Library.Toggles.Hitbox.Value then
            for _, P in pairs(Services.Players:GetPlayers()) do
                if P ~= LocalPlayer and P.Character and P.Character:FindFirstChild("Head") and P.Team ~= LocalPlayer.Team then
                    local H = P.Character.Head
                    H.Size = Vector3.new(Library.Options.HitboxSize.Value, Library.Options.HitboxSize.Value, Library.Options.HitboxSize.Value)
                    H.Transparency = Library.Options.HitboxTrans.Value
                    H.CanCollide = false
                end
            end
        end
        task.wait(1)
    end
end)

-- INIT
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetFolder("sor/arsenal")
SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToTab(Tabs.Settings)
SaveManager:LoadAutoloadConfig()

Library:Notify("sor.lua [arsenal_industrialist] loaded.", 3)
