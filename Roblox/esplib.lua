-- CustomESP Library

local CustomESP = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local ESPs = {}

local defaultOptions = {
    TeamCheck = false,
    RootPartName = "HumanoidRootPart",
    HeadPartName = "Head",
    HeadOffset = 0.5,
    LegOffset = 3,
    WidthRatio = 2,
    Colors = {
        Box = Color3.fromRGB(255, 255, 255),
        Skeleton = Color3.fromRGB(255, 255, 255),
        Tracer = Color3.fromRGB(255, 255, 255),
        HeadDot = Color3.fromRGB(255, 255, 255),
        ViewDirection = Color3.fromRGB(255, 255, 255),
        Name = Color3.fromRGB(255, 255, 255),
        DisplayName = Color3.fromRGB(255, 255, 255),
        Distance = Color3.fromRGB(255, 255, 255),
        Speed = Color3.fromRGB(255, 255, 255),
        Tool = Color3.fromRGB(255, 255, 255),
        ChineseHat = Color3.fromRGB(255, 255, 255),
        BoundingBox = Color3.fromRGB(255, 255, 255),
    },
    Features = {
        Box = true,
        BoundingBox = false,
        Skeleton = true,
        ChineseHat2D = false,
        ChineseHat3D = false,
        BoxImage = false,
        ToolESP = true,
        NameESP = true,
        DisplayNameESP = true,
        DistanceESP = true,
        SpeedESP = true,
        HealthBar = true,
        Tracer = true,
        HeadDot = true,
        OffscreenArrow = true,
        ViewDirection = true,
        CornerBox = false,
        FilledBox = false,
        Outline = false,
        Rainbow = false,
        Fade = false,
        VisibleCheck = false,
        WeaponName = true,
        Ammo = false,
        StaminaBar = false,
        JumpPower = false,
        WalkSpeed = false,
        Status = false,
        Kills = false,
        Deaths = false,
    },
    BoneConnections = {
        {"Head", "UpperTorso"},
        {"UpperTorso", "LowerTorso"},
        {"UpperTorso", "RightUpperArm"},
        {"RightUpperArm", "RightLowerArm"},
        {"RightLowerArm", "RightHand"},
        {"UpperTorso", "LeftUpperArm"},
        {"LeftUpperArm", "LeftLowerArm"},
        {"LeftLowerArm", "LeftHand"},
        {"LowerTorso", "RightUpperLeg"},
        {"RightUpperLeg", "RightLowerLeg"},
        {"RightLowerLeg", "RightFoot"},
        {"LowerTorso", "LeftUpperLeg"},
        {"LeftUpperLeg", "LeftLowerLeg"},
        {"LeftLowerLeg", "LeftFoot"},
    },
    ImageData = nil,  -- Base64 or raw image data for BoxImage if enabled
}

local function CreateDrawing(type)
    local d = Drawing.new(type)
    d.Visible = false
    return d
end

local function GetExtents(model)
    local minVec = Vector3.new(math.huge, math.huge, math.huge)
    local maxVec = Vector3.new(-math.huge, -math.huge, -math.huge)
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            local halfSize = part.Size / 2
            local cf = part.CFrame
            for x = -1, 1, 2 do
                for y = -1, 1, 2 do
                    for z = -1, 1, 2 do
                        local corner = cf * Vector3.new(x * halfSize.X, y * halfSize.Y, z * halfSize.Z)
                        minVec = minVec:Min(corner)
                        maxVec = maxVec:Max(corner)
                    end
                end
            end
        end
    end
    return minVec, maxVec
end

function CustomESP.Add(target, userOptions)
    local options = {}
    for k, v in pairs(defaultOptions) do options[k] = v end
    for k, v in pairs(userOptions or {}) do options[k] = v end

    local esp = {
        Target = target,
        Options = options,
        Drawings = {},
        BoneParts = {},
        Enabled = true,
        PrevPos = nil,
        PrevTime = tick(),
    }

    local root = target:FindFirstChild(options.RootPartName)
    local head = target:FindFirstChild(options.HeadPartName)
    if not root or not head then return nil end

    esp.Root = root
    esp.Head = head
    esp.PrevPos = root.Position

    for _, conn in ipairs(options.BoneConnections) do
        local p1 = target:FindFirstChild(conn[1])
        local p2 = target:FindFirstChild(conn[2])
        if p1 and p2 then
            table.insert(esp.BoneParts, {p1, p2})
        end
    end

    if options.Features.Box then
        esp.Drawings.Box = CreateDrawing("Square")
        esp.Drawings.Box.Thickness = 1
    end

    if options.Features.FilledBox then
        esp.Drawings.FilledBox = CreateDrawing("Square")
        esp.Drawings.FilledBox.Filled = true
        esp.Drawings.FilledBox.Transparency = 0.5
    end

    if options.Features.Outline then
        esp.Drawings.Outline = CreateDrawing("Square")
        esp.Drawings.Outline.Thickness = 3
    end

    if options.Features.CornerBox then
        esp.Drawings.CornerLines = {}
        for i = 1, 8 do
            esp.Drawings.CornerLines[i] = CreateDrawing("Line")
            esp.Drawings.CornerLines[i].Thickness = 1
        end
    end

    if options.Features.Skeleton then
        esp.Drawings.SkeletonLines = {}
        for i = 1, #esp.BoneParts do
            esp.Drawings.SkeletonLines[i] = CreateDrawing("Line")
            esp.Drawings.SkeletonLines[i].Thickness = 1
        end
    end

    if options.Features.Tracer then
        esp.Drawings.Tracer = CreateDrawing("Line")
        esp.Drawings.Tracer.Thickness = 1
    end

    if options.Features.HeadDot then
        esp.Drawings.HeadDot = CreateDrawing("Circle")
        esp.Drawings.HeadDot.Radius = 3
        esp.Drawings.HeadDot.Filled = true
        esp.Drawings.HeadDot.NumSides = 32
    end

    if options.Features.ViewDirection then
        esp.Drawings.ViewLine = CreateDrawing("Line")
        esp.Drawings.ViewLine.Thickness = 1
    end

    if options.Features.NameESP then
        esp.Drawings.NameText = CreateDrawing("Text")
        esp.Drawings.NameText.Size = 13
        esp.Drawings.NameText.Center = true
        esp.Drawings.NameText.Outline = true
    end

    if options.Features.DisplayNameESP then
        esp.Drawings.DisplayText = CreateDrawing("Text")
        esp.Drawings.DisplayText.Size = 13
        esp.Drawings.DisplayText.Center = true
        esp.Drawings.DisplayText.Outline = true
    end

    if options.Features.DistanceESP then
        esp.Drawings.DistanceText = CreateDrawing("Text")
        esp.Drawings.DistanceText.Size = 13
        esp.Drawings.DistanceText.Center = true
        esp.Drawings.DistanceText.Outline = true
    end

    if options.Features.SpeedESP then
        esp.Drawings.SpeedText = CreateDrawing("Text")
        esp.Drawings.SpeedText.Size = 13
        esp.Drawings.SpeedText.Center = true
        esp.Drawings.SpeedText.Outline = true
    end

    if options.Features.HealthBar then
        esp.Drawings.HealthBack = CreateDrawing("Square")
        esp.Drawings.HealthBack.Filled = true
        esp.Drawings.HealthBack.Color = Color3.fromRGB(255, 0, 0)
        esp.Drawings.HealthFront = CreateDrawing("Square")
        esp.Drawings.HealthFront.Filled = true
        esp.Drawings.HealthFront.Color = Color3.fromRGB(0, 255, 0)
    end

    if options.Features.ToolESP then
        esp.Drawings.ToolText = CreateDrawing("Text")
        esp.Drawings.ToolText.Size = 13
        esp.Drawings.ToolText.Center = true
        esp.Drawings.ToolText.Outline = true
    end

    if options.Features.OffscreenArrow then
        esp.Drawings.Arrow = CreateDrawing("Triangle")
        esp.Drawings.Arrow.Filled = true
        esp.Drawings.Arrow.Transparency = 1
    end

    if options.Features.ChineseHat2D then
        esp.Drawings.Hat2D = CreateDrawing("Triangle")
        esp.Drawings.Hat2D.Filled = false
        esp.Drawings.Hat2D.Thickness = 1
    end

    if options.Features.ChineseHat3D then
        esp.Drawings.Hat3DLines = {}
        for i = 1, 8 do
            esp.Drawings.Hat3DLines[i] = CreateDrawing("Line")
            esp.Drawings.Hat3DLines[i].Thickness = 1
        end
    end

    if options.Features.BoundingBox then
        esp.Drawings.BBoxLines = {}
        for i = 1, 12 do
            esp.Drawings.BBoxLines[i] = CreateDrawing("Line")
            esp.Drawings.BBoxLines[i].Thickness = 1
        end
    end

    if options.Features.BoxImage and options.ImageData then
        esp.Drawings.BoxImage = Drawing.new("Image")
        esp.Drawings.BoxImage.Data = options.ImageData
    end

    if options.Features.Ammo then
        esp.Drawings.AmmoText = CreateDrawing("Text")
        esp.Drawings.AmmoText.Size = 13
        esp.Drawings.AmmoText.Center = true
        esp.Drawings.AmmoText.Outline = true
    end

    if options.Features.StaminaBar then
        esp.Drawings.StaminaBack = CreateDrawing("Square")
        esp.Drawings.StaminaBack.Filled = true
        esp.Drawings.StaminaBack.Color = Color3.fromRGB(255, 0, 0)
        esp.Drawings.StaminaFront = CreateDrawing("Square")
        esp.Drawings.StaminaFront.Filled = true
        esp.Drawings.StaminaFront.Color = Color3.fromRGB(0, 0, 255)
    end

    if options.Features.JumpPower then
        esp.Drawings.JumpPowerText = CreateDrawing("Text")
        esp.Drawings.JumpPowerText.Size = 13
        esp.Drawings.JumpPowerText.Center = true
        esp.Drawings.JumpPowerText.Outline = true
    end

    if options.Features.WalkSpeed then
        esp.Drawings.WalkSpeedText = CreateDrawing("Text")
        esp.Drawings.WalkSpeedText.Size = 13
        esp.Drawings.WalkSpeedText.Center = true
        esp.Drawings.WalkSpeedText.Outline = true
    end

    if options.Features.Status then
        esp.Drawings.StatusText = CreateDrawing("Text")
        esp.Drawings.StatusText.Size = 13
        esp.Drawings.StatusText.Center = true
        esp.Drawings.StatusText.Outline = true
    end

    if options.Features.Kills then
        esp.Drawings.KillsText = CreateDrawing("Text")
        esp.Drawings.KillsText.Size = 13
        esp.Drawings.KillsText.Center = true
        esp.Drawings.KillsText.Outline = true
    end

    if options.Features.Deaths then
        esp.Drawings.DeathsText = CreateDrawing("Text")
        esp.Drawings.DeathsText.Size = 13
        esp.Drawings.DeathsText.Center = true
        esp.Drawings.DeathsText.Outline = true
    end

    table.insert(ESPs, esp)
    return esp
end

local function HideDrawings(esp)
    for _, d in pairs(esp.Drawings) do
        if type(d) == "table" then
            for _, dd in ipairs(d) do
                dd.Visible = false
            end
        else
            d.Visible = false
        end
    end
end

function CustomESP:Destroy(esp)
    HideDrawings(esp)
    for _, d in pairs(esp.Drawings) do
        if type(d) == "table" then
            for _, dd in ipairs(d) do
                dd:Remove()
            end
        else
            d:Remove()
        end
    end
    esp.Drawings = {}
    esp.Enabled = false
end

local function UpdateESP(esp)
    if not esp.Enabled or not esp.Root.Parent or not esp.Head.Parent then
        HideDrawings(esp)
        return
    end

    local player = Players:GetPlayerFromCharacter(esp.Target)
    if esp.Options.TeamCheck and player and player.Team == LocalPlayer.Team then
        HideDrawings(esp)
        return
    end

    local rootPos = esp.Root.Position
    local screenRoot, onscreen = Camera:WorldToViewportPoint(rootPos)
    local screenRoot2D = Vector2.new(screenRoot.X, screenRoot.Y)

    local headPos = esp.Head.Position + Vector3.new(0, esp.Options.HeadOffset, 0)
    local headScreen = Camera:WorldToViewportPoint(headPos)
    local headScreen2D = Vector2.new(headScreen.X, headScreen.Y)

    local legPos = rootPos - Vector3.new(0, esp.Options.LegOffset, 0)
    local legScreen = Camera:WorldToViewportPoint(legPos)
    local legScreen2D = Vector2.new(legScreen.X, legScreen.Y)

    local boxHeight = math.abs(headScreen2D.Y - legScreen2D.Y)
    local boxWidth = boxHeight / esp.Options.WidthRatio
    local boxPos = Vector2.new(screenRoot2D.X - boxWidth / 2, math.min(headScreen2D.Y, legScreen2D.Y))
    local boxSize = Vector2.new(boxWidth, boxHeight)

    local distance = 0
    local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if localRoot then
        distance = (localRoot.Position - rootPos).Magnitude
    end

    local transparency = 1
    if esp.Options.Features.Fade then
        transparency = math.clamp(1 - (distance / 1000), 0.2, 1)
    end

    local isVisible = true
    if esp.Options.Features.VisibleCheck then
        local rayParams = RaycastParams.new()
        rayParams.FilterDescendantsInstances = {LocalPlayer.Character or LocalPlayer, Camera}
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        local rayResult = workspace:Raycast(Camera.CFrame.Position, rootPos - Camera.CFrame.Position, rayParams)
        isVisible = rayResult and rayResult.Instance:IsDescendantOf(esp.Target)
    end

    if esp.Options.Features.VisibleCheck and not isVisible then
        HideDrawings(esp)
        return
    end

    local baseColor = esp.Options.Colors.Box
    if esp.Options.Features.Rainbow then
        local hue = tick() % 5 / 5
        baseColor = Color3.fromHSV(hue, 1, 1)
    end

    if esp.Options.Features.OffscreenArrow and not onscreen then
        local camPos = Camera.CFrame.Position
        local dir = (rootPos - camPos).Unit
        local screenDir = Vector2.new(-dir.Z, dir.X) -- rotated 90 degrees for direction
        local radius = math.min(Camera.ViewportSize.X, Camera.ViewportSize.Y) / 2 - 50
        local edgePos = Camera.ViewportSize / 2 + screenDir * radius

        local rot = math.atan2(screenDir.Y, screenDir.X)
        local arrowSize = 10
        esp.Drawings.Arrow.PointA = edgePos
        esp.Drawings.Arrow.PointB = edgePos + Vector2.new(math.cos(rot + 2 * math.pi / 3) * arrowSize, math.sin(rot + 2 * math.pi / 3) * arrowSize)
        esp.Drawings.Arrow.PointC = edgePos + Vector2.new(math.cos(rot - 2 * math.pi / 3) * arrowSize, math.sin(rot - 2 * math.pi / 3) * arrowSize)
        esp.Drawings.Arrow.Color = baseColor
        esp.Drawings.Arrow.Transparency = transparency
        esp.Drawings.Arrow.Visible = true

        HideDrawings(esp) -- hide others
        return
    elseif esp.Options.Features.OffscreenArrow then
        esp.Drawings.Arrow.Visible = false
    end

    if not onscreen then
        HideDrawings(esp)
        return
    end

    if esp.Drawings.Box then
        esp.Drawings.Box.Position = boxPos
        esp.Drawings.Box.Size = boxSize
        esp.Drawings.Box.Color = esp.Options.Colors.Box or baseColor
        esp.Drawings.Box.Transparency = transparency
        esp.Drawings.Box.Visible = true
    end

    if esp.Drawings.FilledBox then
        esp.Drawings.FilledBox.Position = boxPos
        esp.Drawings.FilledBox.Size = boxSize
        esp.Drawings.FilledBox.Color = esp.Options.Colors.Box or baseColor
        esp.Drawings.FilledBox.Transparency = transparency * 0.5
        esp.Drawings.FilledBox.Visible = true
    end

    if esp.Drawings.Outline then
        esp.Drawings.Outline.Position = boxPos - Vector2.new(1, 1)
        esp.Drawings.Outline.Size = boxSize + Vector2.new(2, 2)
        esp.Drawings.Outline.Color = Color3.new(0, 0, 0)
        esp.Drawings.Outline.Transparency = transparency
        esp.Drawings.Outline.Visible = true
    end

    if esp.Drawings.CornerLines then
        local cornerLengthH = boxWidth / 3
        local cornerLengthV = boxHeight / 3
        local lines = esp.Drawings.CornerLines
        -- Top left
        lines[1].From = boxPos
        lines[1].To = boxPos + Vector2.new(cornerLengthH, 0)
        lines[2].From = boxPos
        lines[2].To = boxPos + Vector2.new(0, cornerLengthV)
        -- Top right
        lines[3].From = boxPos + Vector2.new(boxWidth, 0)
        lines[3].To = boxPos + Vector2.new(boxWidth - cornerLengthH, 0)
        lines[4].From = boxPos + Vector2.new(boxWidth, 0)
        lines[4].To = boxPos + Vector2.new(boxWidth, cornerLengthV)
        -- Bottom left
        lines[5].From = boxPos + Vector2.new(0, boxHeight)
        lines[5].To = boxPos + Vector2.new(cornerLengthH, boxHeight)
        lines[6].From = boxPos + Vector2.new(0, boxHeight)
        lines[6].To = boxPos + Vector2.new(0, boxHeight - cornerLengthV)
        -- Bottom right
        lines[7].From = boxPos + Vector2.new(boxWidth, boxHeight)
        lines[7].To = boxPos + Vector2.new(boxWidth - cornerLengthH, boxHeight)
        lines[8].From = boxPos + Vector2.new(boxWidth, boxHeight)
        lines[8].To = boxPos + Vector2.new(boxWidth, boxHeight - cornerLengthV)
        for _, line in ipairs(lines) do
            line.Color = esp.Options.Colors.Box or baseColor
            line.Transparency = transparency
            line.Visible = true
        end
    end

    if esp.Drawings.SkeletonLines then
        for i, bone in ipairs(esp.BoneParts) do
            local p1, v1 = Camera:WorldToViewportPoint(bone[1].Position)
            local p2, v2 = Camera:WorldToViewportPoint(bone[2].Position)
            if v1 and v2 then
                esp.Drawings.SkeletonLines[i].From = Vector2.new(p1.X, p1.Y)
                esp.Drawings.SkeletonLines[i].To = Vector2.new(p2.X, p2.Y)
                esp.Drawings.SkeletonLines[i].Color = esp.Options.Colors.Skeleton or baseColor
                esp.Drawings.SkeletonLines[i].Transparency = transparency
                esp.Drawings.SkeletonLines[i].Visible = true
            else
                esp.Drawings.SkeletonLines[i].Visible = false
            end
        end
    end

    if esp.Drawings.Tracer then
        local from = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
        local to = boxPos + Vector2.new(boxWidth / 2, boxHeight)
        esp.Drawings.Tracer.From = from
        esp.Drawings.Tracer.To = to
        esp.Drawings.Tracer.Color = esp.Options.Colors.Tracer or baseColor
        esp.Drawings.Tracer.Transparency = transparency
        esp.Drawings.Tracer.Visible = true
    end

    if esp.Drawings.HeadDot then
        esp.Drawings.HeadDot.Position = headScreen2D
        esp.Drawings.HeadDot.Color = esp.Options.Colors.HeadDot or baseColor
        esp.Drawings.HeadDot.Transparency = transparency
        esp.Drawings.HeadDot.Visible = true
    end

    if esp.Drawings.ViewLine then
        local startPos = rootPos
        local endPos = startPos + esp.Root.CFrame.LookVector * 5
        local startScreen, sv = Camera:WorldToViewportPoint(startPos)
        local endScreen, ev = Camera:WorldToViewportPoint(endPos)
        if sv and ev then
            esp.Drawings.ViewLine.From = Vector2.new(startScreen.X, startScreen.Y)
            esp.Drawings.ViewLine.To = Vector2.new(endScreen.X, endScreen.Y)
            esp.Drawings.ViewLine.Color = esp.Options.Colors.ViewDirection or baseColor
            esp.Drawings.ViewLine.Transparency = transparency
            esp.Drawings.ViewLine.Visible = true
        else
            esp.Drawings.ViewLine.Visible = false
        end
    end

    local textY = boxPos.Y - 15
    local textStep = 13

    if esp.Drawings.NameText then
        local name = player and player.Name or esp.Target.Name
        esp.Drawings.NameText.Text = name
        esp.Drawings.NameText.Position = Vector2.new(boxPos.X + boxWidth / 2, textY)
        esp.Drawings.NameText.Color = esp.Options.Colors.Name or baseColor
        esp.Drawings.NameText.Transparency = transparency
        esp.Drawings.NameText.Visible = true
        textY = textY - textStep
    end

    if esp.Drawings.DisplayText then
        local display = player and player.DisplayName or esp.Target.Name
        esp.Drawings.DisplayText.Text = display
        esp.Drawings.DisplayText.Position = Vector2.new(boxPos.X + boxWidth / 2, textY)
        esp.Drawings.DisplayText.Color = esp.Options.Colors.DisplayName or baseColor
        esp.Drawings.DisplayText.Transparency = transparency
        esp.Drawings.DisplayText.Visible = true
        textY = textY - textStep
    end

    local bottomY = boxPos.Y + boxHeight + 5
    local bottomStep = 13

    if esp.Drawings.DistanceText then
        esp.Drawings.DistanceText.Text = math.floor(distance) .. " studs"
        esp.Drawings.DistanceText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.DistanceText.Color = esp.Options.Colors.Distance or baseColor
        esp.Drawings.DistanceText.Transparency = transparency
        esp.Drawings.DistanceText.Visible = true
        bottomY = bottomY + bottomStep
    end

    local currentTime = tick()
    local delta = currentTime - esp.PrevTime
    local speed = (rootPos - esp.PrevPos).Magnitude / delta
    esp.PrevPos = rootPos
    esp.PrevTime = currentTime

    if esp.Drawings.SpeedText then
        esp.Drawings.SpeedText.Text = math.floor(speed) .. " sps"
        esp.Drawings.SpeedText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.SpeedText.Color = esp.Options.Colors.Speed or baseColor
        esp.Drawings.SpeedText.Transparency = transparency
        esp.Drawings.SpeedText.Visible = true
        bottomY = bottomY + bottomStep
    end

    local humanoid = esp.Target:FindFirstChildOfClass("Humanoid")

    if humanoid and esp.Drawings.HealthBack and esp.Drawings.HealthFront then
        local healthRatio = humanoid.Health / humanoid.MaxHealth
        local barHeight = boxHeight * healthRatio
        esp.Drawings.HealthBack.Position = boxPos - Vector2.new(5, 0)
        esp.Drawings.HealthBack.Size = Vector2.new(3, boxHeight)
        esp.Drawings.HealthBack.Transparency = transparency
        esp.Drawings.HealthBack.Visible = true
        esp.Drawings.HealthFront.Position = boxPos - Vector2.new(5, boxHeight - barHeight)
        esp.Drawings.HealthFront.Size = Vector2.new(3, barHeight)
        esp.Drawings.HealthFront.Transparency = transparency
        esp.Drawings.HealthFront.Visible = true
    end

    local tool = esp.Target:FindFirstChildOfClass("Tool")

    if tool and esp.Drawings.ToolText then
        esp.Drawings.ToolText.Text = tool.Name
        esp.Drawings.ToolText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.ToolText.Color = esp.Options.Colors.Tool or baseColor
        esp.Drawings.ToolText.Transparency = transparency
        esp.Drawings.ToolText.Visible = true
        bottomY = bottomY + bottomStep
    end

    if tool and esp.Drawings.AmmoText and tool:FindFirstChild("Ammo") then
        esp.Drawings.AmmoText.Text = "Ammo: " .. tostring(tool.Ammo.Value)
        esp.Drawings.AmmoText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.AmmoText.Color = baseColor
        esp.Drawings.AmmoText.Transparency = transparency
        esp.Drawings.AmmoText.Visible = true
        bottomY = bottomY + bottomStep
    end

    if humanoid and esp.Drawings.StaminaBack and esp.Drawings.StaminaFront and humanoid:GetAttribute("Stamina") and humanoid:GetAttribute("MaxStamina") then
        local staminaRatio = humanoid:GetAttribute("Stamina") / humanoid:GetAttribute("MaxStamina")
        local barHeight = boxHeight * staminaRatio
        esp.Drawings.StaminaBack.Position = boxPos + Vector2.new(boxWidth + 2, 0)
        esp.Drawings.StaminaBack.Size = Vector2.new(3, boxHeight)
        esp.Drawings.StaminaBack.Transparency = transparency
        esp.Drawings.StaminaBack.Visible = true
        esp.Drawings.StaminaFront.Position = boxPos + Vector2.new(boxWidth + 2, boxHeight - barHeight)
        esp.Drawings.StaminaFront.Size = Vector2.new(3, barHeight)
        esp.Drawings.StaminaFront.Transparency = transparency
        esp.Drawings.StaminaFront.Visible = true
    end

    if humanoid and esp.Drawings.JumpPowerText then
        esp.Drawings.JumpPowerText.Text = "Jump: " .. math.floor(humanoid.JumpPower)
        esp.Drawings.JumpPowerText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.JumpPowerText.Color = baseColor
        esp.Drawings.JumpPowerText.Transparency = transparency
        esp.Drawings.JumpPowerText.Visible = true
        bottomY = bottomY + bottomStep
    end

    if humanoid and esp.Drawings.WalkSpeedText then
        esp.Drawings.WalkSpeedText.Text = "Walk: " .. math.floor(humanoid.WalkSpeed)
        esp.Drawings.WalkSpeedText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.WalkSpeedText.Color = baseColor
        esp.Drawings.WalkSpeedText.Transparency = transparency
        esp.Drawings.WalkSpeedText.Visible = true
        bottomY = bottomY + bottomStep
    end

    if humanoid and esp.Drawings.StatusText then
        local status = humanoid:GetState().Name
        esp.Drawings.StatusText.Text = status
        esp.Drawings.StatusText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.StatusText.Color = baseColor
        esp.Drawings.StatusText.Transparency = transparency
        esp.Drawings.StatusText.Visible = true
        bottomY = bottomY + bottomStep
    end

    if player and esp.Drawings.KillsText and player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Kills") then
        esp.Drawings.KillsText.Text = "Kills: " .. tostring(player.leaderstats.Kills.Value)
        esp.Drawings.KillsText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.KillsText.Color = baseColor
        esp.Drawings.KillsText.Transparency = transparency
        esp.Drawings.KillsText.Visible = true
        bottomY = bottomY + bottomStep
    end

    if player and esp.Drawings.DeathsText and player:FindFirstChild("leaderstats") and player.leaderstats:FindFirstChild("Deaths") then
        esp.Drawings.DeathsText.Text = "Deaths: " .. tostring(player.leaderstats.Deaths.Value)
        esp.Drawings.DeathsText.Position = Vector2.new(boxPos.X + boxWidth / 2, bottomY)
        esp.Drawings.DeathsText.Color = baseColor
        esp.Drawings.DeathsText.Transparency = transparency
        esp.Drawings.DeathsText.Visible = true
        bottomY = bottomY + bottomStep
    end

    if esp.Drawings.Hat2D then
        local hatTop = headScreen2D - Vector2.new(0, 20)
        local hatLeft = headScreen2D - Vector2.new(10, 10)
        local hatRight = headScreen2D + Vector2.new(10, -10)
        esp.Drawings.Hat2D.PointA = hatTop
        esp.Drawings.Hat2D.PointB = hatLeft
        esp.Drawings.Hat2D.PointC = hatRight
        esp.Drawings.Hat2D.Color = esp.Options.Colors.ChineseHat or baseColor
        esp.Drawings.Hat2D.Transparency = transparency
        esp.Drawings.Hat2D.Visible = true
    end

    if esp.Drawings.Hat3DLines then
        local tip = headPos + Vector3.new(0, 3, 0)
        local baseRadius = 1.5
        local sides = #esp.Drawings.Hat3DLines
        local baseCenter = headPos + Vector3.new(0, 1, 0)
        local angleStep = 2 * math.pi / sides
        for i = 1, sides do
            local angle = i * angleStep
            local basePoint = baseCenter + Vector3.new(math.cos(angle) * baseRadius, 0, math.sin(angle) * baseRadius)
            local tipScreen, tv = Camera:WorldToViewportPoint(tip)
            local baseScreen, bv = Camera:WorldToViewportPoint(basePoint)
            if tv and bv then
                esp.Drawings.Hat3DLines[i].From = Vector2.new(tipScreen.X, tipScreen.Y)
                esp.Drawings.Hat3DLines[i].To = Vector2.new(baseScreen.X, baseScreen.Y)
                esp.Drawings.Hat3DLines[i].Color = esp.Options.Colors.ChineseHat or baseColor
                esp.Drawings.Hat3DLines[i].Transparency = transparency
                esp.Drawings.Hat3DLines[i].Visible = true
            else
                esp.Drawings.Hat3DLines[i].Visible = false
            end
        end
    end

    if esp.Drawings.BBoxLines then
        local minVec, maxVec = GetExtents(esp.Target)
        local corners = {
            Vector3.new(minVec.X, minVec.Y, minVec.Z),
            Vector3.new(minVec.X, minVec.Y, maxVec.Z),
            Vector3.new(minVec.X, maxVec.Y, minVec.Z),
            Vector3.new(minVec.X, maxVec.Y, maxVec.Z),
            Vector3.new(maxVec.X, minVec.Y, minVec.Z),
            Vector3.new(maxVec.X, minVec.Y, maxVec.Z),
            Vector3.new(maxVec.X, maxVec.Y, minVec.Z),
            Vector3.new(maxVec.X, maxVec.Y, maxVec.Z),
        }
        local screenCorners = {}
        for i, corner in ipairs(corners) do
            local screen, _ = Camera:WorldToViewportPoint(corner)
            screenCorners[i] = Vector2.new(screen.X, screen.Y)
        end
        local edges = {
            {1, 2}, {1, 3}, {1, 5},
            {2, 4}, {2, 6},
            {3, 4}, {3, 7},
            {4, 8},
            {5, 6}, {5, 7},
            {6, 8},
            {7, 8},
        }
        for i, edge in ipairs(edges) do
            esp.Drawings.BBoxLines[i].From = screenCorners[edge[1]]
            esp.Drawings.BBoxLines[i].To = screenCorners[edge[2]]
            esp.Drawings.BBoxLines[i].Color = esp.Options.Colors.BoundingBox or baseColor
            esp.Drawings.BBoxLines[i].Transparency = transparency
            esp.Drawings.BBoxLines[i].Visible = true
        end
    end

    if esp.Drawings.BoxImage then
        esp.Drawings.BoxImage.Position = boxPos + boxSize / 2
        esp.Drawings.BoxImage.Size = boxSize / 2
        esp.Drawings.BoxImage.Transparency = transparency
        esp.Drawings.BoxImage.Visible = true
    end
end

RunService:BindToRenderStep("CustomESP", Enum.RenderPriority.Camera.Value + 1, function()
    for i = #ESPs, 1, -1 do
        local esp = ESPs[i]
        if esp.Enabled then
            UpdateESP(esp)
        else
            CustomESP:Destroy(esp)
            table.remove(ESPs, i)
        end
    end
end)

return CustomESP
