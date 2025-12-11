-- sor.lua // visuals_engine_v2
-- industrial_grade // drawing_api // crash_safe

local sor_lib = {
    registry = {},
    config = {
        enabled = true,
        render_dist = 3000,
        team_check = false,
        font = 2, -- Plex
        text_size = 13
    }
}

local s = {
    rs = game:GetService("RunService"),
    ws = game:GetService("Workspace"),
    plrs = game:GetService("Players"),
    cam = game:GetService("Workspace").CurrentCamera,
    wts = game:GetService("Workspace").CurrentCamera.WorldToViewportPoint
}

local Vector2, Vector3, Color3 = Vector2.new, Vector3.new, Color3.new
local floor, rad, cos, sin, tan = math.floor, math.rad, math.cos, math.sin, math.tan

-- // SAFE DRAWING WRAPPER //
local function NewDrawing(type, props)
    if not Drawing then return nil end
    local obj = Drawing.new(type)
    if not obj then return nil end
    for k, v in pairs(props) do obj[k] = v end
    return obj
end

local function SafeRemove(obj)
    if not obj then return end
    if type(obj) == "table" and not obj.Remove and not obj.Color then
        -- Assume list of objects (like hat lines)
        for _, v in pairs(obj) do 
            if v and v.Remove then v:Remove() end 
        end
    elseif obj.Remove then
        -- Single object
        obj:Remove()
    end
end

-- // ENTITY CLASS //
local Entity = {}
Entity.__index = Entity

function Entity.new(model, path_config)
    local self = setmetatable({}, Entity)
    self.model = model
    
    -- Custom Model Support
    self.root = path_config.root or "HumanoidRootPart"
    self.head = path_config.head or "Head"
    self.hum = path_config.hum or "Humanoid"
    
    -- Canvas
    self.canvas = {
        -- Box
        box = NewDrawing("Square", {Thickness=1.5, ZIndex=2, Filled=false}),
        box_outline = NewDrawing("Square", {Thickness=2.5, ZIndex=1, Filled=false, Color=Color3(0,0,0)}),
        box_fill = NewDrawing("Square", {Thickness=1, ZIndex=1, Filled=true, Transparency=0.25}),
        
        -- Text
        name = NewDrawing("Text", {Center=true, Outline=true, Size=13, ZIndex=3}),
        dist = NewDrawing("Text", {Center=true, Outline=true, Size=12, ZIndex=3}),
        stats = NewDrawing("Text", {Center=false, Outline=true, Size=12, ZIndex=3}),
        
        -- Health
        bar = NewDrawing("Square", {Thickness=1, ZIndex=2, Filled=true}),
        bar_outline = NewDrawing("Square", {Thickness=1, ZIndex=1, Filled=true, Color=Color3(0,0,0)}),
        
        -- Tracers
        tracer = NewDrawing("Line", {Thickness=1, ZIndex=1}),
        
        -- 3D Elements
        skel = {}, -- Array of lines
        hat = {}, -- Array of lines
        
        -- Offscreen
        arrow = NewDrawing("Triangle", {Thickness=1, Filled=true, ZIndex=4})
    }
    
    return self
end

function Entity:Destruct()
    if not self.canvas then return end
    for _, obj in pairs(self.canvas) do
        SafeRemove(obj)
    end
    self.canvas = nil
end

function Entity:GetPart(name)
    return self.model:FindFirstChild(name)
end

function Entity:Update(cfg)
    if not self.model or not self.model.Parent then return false end
    
    local root_part = self:GetPart(self.root)
    local hum = self:GetPart(self.hum)
    local head_part = self:GetPart(self.head)
    
    -- Function to hide all
    local function Hide()
        if not self.canvas then return end
        for k, v in pairs(self.canvas) do
            if type(v) == "table" and not v.Remove then
                for _, l in pairs(v) do l.Visible = false end
            elseif v.Remove then
                v.Visible = false
            end
        end
    end
    
    if not root_part then Hide(); return true end
    
    -- Team Check
    if cfg.team_check then
        local plr = s.plrs:GetPlayerFromCharacter(self.model)
        local lp = s.plrs.LocalPlayer
        if plr and lp and plr.Team == lp.Team then
            Hide(); return true
        end
    end

    -- Calculations
    local root_pos = root_part.Position
    local screen_pos, on_screen = s.wts(s.cam, root_pos)
    local dist = (s.cam.CFrame.Position - root_pos).Magnitude
    
    if dist > cfg.render_dist then Hide(); return true end

    -- Offscreen Arrows
    if not on_screen and cfg.features.arrows then
        Hide() -- Hide regular esp
        local arrow = self.canvas.arrow
        if arrow then
            local center = Vector2(s.cam.ViewportSize.X/2, s.cam.ViewportSize.Y/2)
            local rel = s.cam.CFrame:PointToObjectSpace(root_pos)
            local ang = math.atan2(rel.Y, rel.X) + math.pi/2
            local rad = 250
            
            local direction = Vector2(cos(ang), sin(ang))
            local pos = center + (direction * rad)
            
            -- Arrow Triangle Logic
            local a_size = 18
            local split = 0.5
            
            arrow.PointA = pos + (direction * a_size)
            arrow.PointB = pos + (Vector2(cos(ang - split), sin(ang - split)) * (a_size * 0.4))
            arrow.PointC = pos + (Vector2(cos(ang + split), sin(ang + split)) * (a_size * 0.4))
            arrow.Color = cfg.colors.arrow
            arrow.Visible = true
        end
        return true
    end

    if not on_screen then Hide(); return true end
    if self.canvas.arrow then self.canvas.arrow.Visible = false end

    -- Bounding Box Math
    local min_x, min_y = 9e9, 9e9
    local max_x, max_y = -9e9, -9e9
    
    local parts = {root_part, head_part} -- Optimization: Only calculate bounds based on Root+Head (faster) or use GetChildren for precision
    -- For full rigs, calculating every part is heavy. Let's do a dynamic size estimation based on RootPart size
    
    local size = root_part.Size
    local corners = {
        Vector3(size.X/2, size.Y/2 + 2, size.Z/2), -- Estimated height padding
        Vector3(-size.X/2, -size.Y/2 - 1.5, -size.Z/2)
    }
    
    -- Project corners
    for _, offset in pairs(corners) do
        local world = root_part.CFrame:PointToWorldSpace(offset)
        local screen = s.wts(s.cam, world)
        min_x = math.min(min_x, screen.X)
        min_y = math.min(min_y, screen.Y)
        max_x = math.max(max_x, screen.X)
        max_y = math.max(max_y, screen.Y)
    end
    
    local w = max_x - min_x
    local h = max_y - min_y
    local box_size = Vector2(w, h)
    local box_pos = Vector2(min_x, min_y)

    -- RENDER: Box
    if cfg.features.box then
        self.canvas.box.Size = box_size
        self.canvas.box.Position = box_pos
        self.canvas.box.Color = cfg.colors.box
        self.canvas.box.Visible = true
        
        self.canvas.box_outline.Size = box_size
        self.canvas.box_outline.Position = box_pos
        self.canvas.box_outline.Visible = true
        
        if cfg.features.fill then
            self.canvas.box_fill.Size = box_size
            self.canvas.box_fill.Position = box_pos
            self.canvas.box_fill.Color = cfg.colors.box
            self.canvas.box_fill.Visible = true
        else self.canvas.box_fill.Visible = false end
    else
        self.canvas.box.Visible = false
        self.canvas.box_outline.Visible = false
        self.canvas.box_fill.Visible = false
    end
    
    -- RENDER: Name
    if cfg.features.name then
        self.canvas.name.Text = self.model.Name
        if hum and hum.DisplayName ~= "" then self.canvas.name.Text = hum.DisplayName end
        self.canvas.name.Position = Vector2(min_x + w/2, min_y - 16)
        self.canvas.name.Color = cfg.colors.name
        self.canvas.name.Visible = true
    else self.canvas.name.Visible = false end

    -- RENDER: Distance
    if cfg.features.distance then
        self.canvas.dist.Text = "[" .. math.floor(dist) .. "s]" -- Studs
        self.canvas.dist.Position = Vector2(min_x + w/2, max_y + 2)
        self.canvas.dist.Color = cfg.colors.dist
        self.canvas.dist.Visible = true
    else self.canvas.dist.Visible = false end

    -- RENDER: Health
    if cfg.features.health and hum then
        local hp, max = hum.Health, hum.MaxHealth
        local pct = math.clamp(hp/max, 0, 1)
        local bar_h = h * pct
        
        self.canvas.bar.Size = Vector2(2, bar_h)
        self.canvas.bar.Position = Vector2(min_x - 5, max_y - bar_h)
        self.canvas.bar.Color = Color3.fromHSV(pct * 0.33, 1, 1) -- Dynamic Green->Red
        self.canvas.bar.Visible = true
        
        self.canvas.bar_outline.Size = Vector2(4, h + 2)
        self.canvas.bar_outline.Position = Vector2(min_x - 6, min_y - 1)
        self.canvas.bar_outline.Visible = true
    else
        self.canvas.bar.Visible = false
        self.canvas.bar_outline.Visible = false
    end

    -- RENDER: Tracer
    if cfg.features.tracer then
        self.canvas.tracer.From = Vector2(s.cam.ViewportSize.X/2, s.cam.ViewportSize.Y)
        self.canvas.tracer.To = Vector2(min_x + w/2, max_y)
        self.canvas.tracer.Color = cfg.colors.tracer
        self.canvas.tracer.Visible = true
    else self.canvas.tracer.Visible = false end

    -- RENDER: Chinese Hat (3D)
    if cfg.features.hat and head_part then
        local center = head_part.Position + Vector3(0, 1.2, 0)
        local radius = 1.5
        local segments = 12
        local points = {}
        
        -- Calculate points
        for i=1, segments do
            local angle = math.rad((i/segments) * 360 + (os.clock() * 50)) -- Spin effect
            local off = Vector3(math.cos(angle)*radius, -0.5, math.sin(angle)*radius)
            local p, v = s.wts(s.cam, center + off)
            if v then table.insert(points, Vector2(p.X, p.Y)) else table.insert(points, nil) end
        end
        local top, top_vis = s.wts(s.cam, center + Vector3(0, 0.5, 0))

        if top_vis then
            for i=1, segments do
                local p1 = points[i]
                local p2 = points[(i % segments) + 1]
                
                -- Lazy init lines
                if not self.canvas.hat[i] then self.canvas.hat[i] = NewDrawing("Line", {Thickness=1}) end
                if not self.canvas.hat[i+segments] then self.canvas.hat[i+segments] = NewDrawing("Line", {Thickness=1}) end
                
                local l1 = self.canvas.hat[i] -- Base
                local l2 = self.canvas.hat[i+segments] -- Spike to top
                
                if p1 and p2 then
                    l1.From = p1
                    l1.To = p2
                    l1.Color = cfg.colors.hat
                    l1.Visible = true
                    
                    l2.From = p1
                    l2.To = Vector2(top.X, top.Y)
                    l2.Color = cfg.colors.hat
                    l2.Visible = true
                else
                    l1.Visible = false
                    l2.Visible = false
                end
            end
        end
    else
        for _, l in pairs(self.canvas.hat) do l.Visible = false end
    end
    
    return true
end

-- // INTERFACE //
function sor_lib.Add(model, path_cfg)
    if sor_lib.registry[model] then sor_lib.registry[model]:Destruct() end
    sor_lib.registry[model] = Entity.new(model, path_cfg)
end

function sor_lib.Remove(model)
    if sor_lib.registry[model] then
        sor_lib.registry[model]:Destruct()
        sor_lib.registry[model] = nil
    end
end

function sor_lib.Init(cfg)
    sor_lib.config = cfg
    s.rs.RenderStepped:Connect(function()
        if not sor_lib.config.enabled then return end
        for model, entity in pairs(sor_lib.registry) do
            local s, err = pcall(function() 
                local keep = entity:Update(sor_lib.config) 
                if not keep then sor_lib.Remove(model) end
            end)
            if not s then 
                -- Fail silently and cleanup to prevent spam
                sor_lib.Remove(model) 
            end
        end
    end)
end

return sor_lib
