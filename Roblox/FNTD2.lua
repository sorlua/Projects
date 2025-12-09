local Services = {
    Players = game:GetService("Players"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    VirtualUser = game:GetService("VirtualUser"),
    RunService = game:GetService("RunService")
}

local LocalPlayer = Services.Players.LocalPlayer

-- // UI LOAD
local Repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(Repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(Repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(Repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = "sor.lua / fntd2 [industrialist]",
    Center = true, AutoShow = true, TabPadding = 8
})

local Tabs = { Main = Window:AddTab("macro"), Settings = Window:AddTab("system") }
local Farm = Tabs.Main:AddLeftGroupbox("logic")

-- // CONFIG
Farm:AddInput('MacroX', { Default = '0', Text = 'pos x', Numeric = true })
Farm:AddInput('MacroY', { Default = '0', Text = 'pos y', Numeric = true })
Farm:AddInput('MacroZ', { Default = '0', Text = 'pos z', Numeric = true })

Farm:AddButton('snap position', function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local Pos = LocalPlayer.Character.HumanoidRootPart.Position
        Library.Options.MacroX:SetValue(tostring(math.floor(Pos.X)))
        Library.Options.MacroY:SetValue(tostring(math.floor(Pos.Y)))
        Library.Options.MacroZ:SetValue(tostring(math.floor(Pos.Z)))
    end
end)

Farm:AddDivider()
Farm:AddToggle('Recorder', { Text = 'capture units', Default = false })
Farm:AddToggle('Enabled', { Text = 'execute macro', Default = false })
Farm:AddToggle('AutoUpgrade', { Text = 'auto upgrade', Default = true })
Farm:AddToggle('AutoRejoin', { Text = 'infinite cycle', Default = true })

local Slots = Tabs.Main:AddRightGroupbox("loadout")
for i = 1, 6 do
    Slots:AddInput('GUID'..i, { Default = '', Text = 'slot '..i, Placeholder = 'waiting...' })
end

-- // NETWORK FINDER
local function GetNetwork()
    local Shared = Services.ReplicatedStorage:FindFirstChild("Shared")
    if Shared and Shared:FindFirstChild("Packages") then
        local Index = Shared.Packages:FindFirstChild("_Index")
        if Index then
            for _, c in ipairs(Index:GetChildren()) do
                if c.Name:match("sleitnick_net@") then 
                    return c:FindFirstChild("net")
                end
            end
        end
    end
    return nil
end

-- // LOGIC: RECORDER (ANTI-SPAM)
local mt = getrawmetatable(game)
setreadonly(mt, false)
local oldNamecall = mt.__namecall
local LastCaptureTime = 0 -- Debounce variable

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if method == "FireServer" and string.find(self.Name, "PlaceUnit") then
        if Library.Toggles.Recorder.Value then
            -- Check Cooldown (prevents spamming 100 times a second)
            if os.clock() - LastCaptureTime > 0.5 then
                for _, arg in pairs(args) do
                    if type(arg) == "table" and rawget(arg, "UnitGUID") then
                        -- FORCE STRING CONVERSION (Fixes the "filling all slots" bug)
                        local ID = tostring(arg.UnitGUID)
                        
                        -- Check Duplicates
                        local IsDuplicate = false
                        for i = 1, 6 do
                            if Library.Options["GUID"..i].Value == ID then
                                IsDuplicate = true
                                break
                            end
                        end
                        
                        if not IsDuplicate then
                            for i = 1, 6 do
                                if Library.Options["GUID"..i].Value == "" then
                                    Library.Options["GUID"..i]:SetValue(ID)
                                    Library:Notify("captured slot " .. i, 2)
                                    LastCaptureTime = os.clock() -- Reset cooldown
                                    break 
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return oldNamecall(self, unpack(args))
end)
setreadonly(mt, true)

-- // LOGIC: MAIN LOOP
task.spawn(function()
    while true do
        if Library.Toggles.Enabled.Value then
            local Net = GetNetwork()
            
            if Net then
                local Place = Net:FindFirstChild("RE/PlaceUnit")
                local Upgrade = Net:FindFirstChild("RE/UpgradeAll")
                local Start = Net:FindFirstChild("RE/StartGame")
                local Replay = Net:FindFirstChild("RE/Replay") or Net:FindFirstChild("RE/PlayAgain")
                
                -- Game State
                if Start then pcall(function() Start:FireServer() end) end
                if Replay then pcall(function() Replay:FireServer() end) end
                
                -- Upgrades
                if Library.Toggles.AutoUpgrade.Value and Upgrade then
                    pcall(function() Upgrade:FireServer() end)
                end

                -- Placement
                if Place then
                    local X = tonumber(Library.Options.MacroX.Value) or 0
                    local Y = tonumber(Library.Options.MacroY.Value) or 0
                    local Z = tonumber(Library.Options.MacroZ.Value) or 0
                    local CF = CFrame.new(X, Y, Z)
                    
                    for i = 1, 6 do
                        local ID = Library.Options["GUID"..i].Value
                        if ID ~= "" then
                            pcall(function() 
                                Place:FireServer({["PlaceCFrame"] = CF, ["UnitGUID"] = ID}) 
                            end)
                            -- Delay to prevent packet overload
                            task.wait(0.2)
                        end
                    end
                end
            end
        end
        task.wait(0.5)
    end
end)

-- // AUTO-REJOIN
LocalPlayer.OnTeleport:Connect(function(State)
    if Library.Toggles.AutoRejoin.Value and (queue_on_teleport or syn.queue_on_teleport) then
        local queue = queue_on_teleport or syn.queue_on_teleport
        queue([[
            repeat task.wait() until game:IsLoaded()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/sorlua/Projects/refs/heads/main/Roblox/FNTD2.lua"))()
        ]])
    end
end)

-- // INIT
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetFolder("sor/fntd2")
SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToTab(Tabs.Settings)
SaveManager:LoadAutoloadConfig()

Library:Notify("sor.lua loaded.", 3)
