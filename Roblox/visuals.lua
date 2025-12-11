-- sor.lua // visuals_engine_v3
-- industrial // recursive_gc // drawing_api

local sor_lib = {
    registry = {},
    config = {
        enabled = true,
        render_dist = 2500,
        team_check = false,
        font = 2, -- Plex
        text_size = 13,
        limit_text_width = false
    }
}

-- // CACHE //
local s = {
    rs = game:GetService("RunService"),
    ws = game:GetService("Workspace"),
    plrs = game:GetService("Players"),
    cam = workspace.CurrentCamera,
    wts = workspace.CurrentCamera.WorldToViewportPoint,
    v2 = Vector2.new,
    v3 = Vector3.new,
    c3 = Color3.new,
    cf = CFrame.new,
    rad = math.rad,
    cos = math.cos,
    sin = math.sin,
    floor = math.floor,
    abs = math.abs,
    max = math.max
}

-- // MEMORY MANAGEMENT //
local function IsDrawing(obj)
    -- Robust check for drawing objects across different executors
    return obj and (typeof(obj) == "userdata" or typeof(obj) == "table") and rawget(obj, "Remove") ~= nil
end

local function SafeRemove(obj)
    if not obj then return end

    -- Case 1: Standard Drawing Object
    if IsDrawing(obj) then
        obj:Remove()
        return
    end

    -- Case 2: Table/Container (Recursive Clean)
    if type(obj) == "table" then
        for i, v in pairs(obj) do
            SafeRemove(v)
            obj[i] = nil
        end
    end
end

local function NewDraw(type, props)
    local obj = Drawing.new(type)
    if not obj then return nil end
    
    for k, v in pairs(props) do
        obj[k] = v
    end
    return obj
end

-- // ENTITY CLASS //
local Entity = {}
Entity.__index = Entity

function Entity.new(model, paths)
    local self = setmetatable({}, Entity)
    self.model = model
    self.paths = paths or {root = "HumanoidRootPart", head = "Head", hum = "Humanoid"}
    
    self.last_pos = s.v3(0,0,0)
    self.last_tick = os.clock()
    self.vel = 0

    -- Canvas Container
    self.canvas = {
        -- 2D Box
        box = NewDraw("Square", {Thickness = 1.5, ZIndex = 2, Filled = false}),
        box_out = NewDraw("Square", {Thickness = 2.5, ZIndex = 1, Filled = false, Color = s.c3(0,0,0)}),
        box_fill = NewDraw("Square", {Thickness = 1, ZIndex = 1, Filled = true, Transparency = 0.4}),

        -- Indicators
        name = NewDraw("Text", {Center = true, Outline = true, Size = 13, ZIndex = 3}),
        dist = NewDraw("Text", {Center = true, Outline = true, Size = 12, ZIndex = 3}),
        info = NewDraw("Text", {Center = false, Outline = true, Size = 12, ZIndex = 3}),
        
        -- Status
        bar = NewDraw("Square", {Thickness = 1, ZIndex = 2, Filled = true}),
        bar_out = NewDraw("Square", {Thickness = 1, ZIndex = 1, Filled = true, Color = s.c3(0,0,0)}),
        
        -- Visuals
        tracer = NewDraw("Line", {Thickness = 1, ZIndex = 1}),
        arrow = NewDraw("Triangle", {Thickness = 1, Filled = true, ZIndex = 4}),
        
        -- Complex Structures (Tables)
        hat = {}, -- 3D Cone Lines
        skel = {} -- Skeleton Lines
    }
    
    return self
end

function Entity:Destruct()
    -- Recursive cleanup via SafeRemove
    SafeRemove(self.canvas)
    self.canvas = nil
    self.model = nil
end

function Entity:GetPart(name)
    if not self.model then return nil end
    return self.model:FindFirstChild(name)
end

function Entity:Update(cfg)
    if not self.model or not self.model.Parent then return false end

    local root = self:GetPart(self.paths.root)
    local head = self:GetPart(self.paths.head)
    local hum = self:GetPart(self.paths.hum)

    -- Visibility Toggle Helper
    local function SetVisible(state)
        if not self.canvas then return end
        
        -- Iterate canvas manually to handle visibility
        for k, v in pairs(self.canvas) do
            if IsDrawing(v) then
                v.Visible = state
            elseif type(v) == "table" then
                for _, sub in pairs(v) do
                    if IsDrawing(sub) then sub.Visible = state end
                end
            end
        end
    end

    if not root then 
        SetVisible(false)
        return true 
    end

    -- Velocity Calc
    local tick = os.clock()
    if tick - self.last_tick > 0.1 then
        self.vel = (root.Position - self.last_pos).Magnitude / (tick - self.last_tick)
        self.last_pos = root.Position
        self.last_tick = tick
    end

    -- Checks
    if cfg.team_check then
        local p = s.plrs:GetPlayerFromCharacter(self.model)
        if p and p.Team == s.plrs.LocalPlayer.Team then
            SetVisible(false)
            return true
        end
    end

    -- Projection
    local pos, vis = s.wts(s.cam, root.Position)
    local dist = (s.cam.CFrame.Position - root.Position).Magnitude

    if dist > cfg.render_dist then
        SetVisible(false)
        return true
    end

    -- Offscreen Arrows
    if not vis and cfg.features.arrows then
        SetVisible(false) -- Hide main esp
        
        local center = s.v2(s.cam.ViewportSize.X / 2, s.cam.ViewportSize.Y / 2)
        local rel = s.cam.CFrame:PointToObjectSpace(root.Position)
        local ang = math.atan2(rel.Y, rel.X) + math.pi / 2
        local rad = 300
        
        local dir = s.v2(s.cos(ang), s.sin(ang))
        local arrow_pos = center + (dir * rad)
        
        -- Draw Triangle
        local scale = 16
        local width = 0.6
        
        local a = arrow_pos + (dir * scale)
        local b = arrow_pos + (s.v2(s.cos(ang - width), s.sin(ang - width)) * (scale * 0.5))
        local c = arrow_pos + (s.v2(s.cos(ang + width), s.sin(ang + width)) * (scale * 0.5))
        
        self.canvas.arrow.PointA = a
        self.canvas.arrow.PointB = b
        self.canvas.arrow.PointC = c
        self.canvas.arrow.Color = cfg.colors.arrow
        self.canvas.arrow.Visible = true
        return true
    else
        self.canvas.arrow.Visible = false
    end

    if not vis then
        SetVisible(false)
        return true
    end

    -- Bounding Box Math
    local r_size = root.Size
    local tl = s.wts(s.cam, (root.CFrame * s.cf(r_size.X, r_size.Y + 1.2, 0)).Position)
    local bl = s.wts(s.cam, (root.CFrame * s.cf(-r_size.X, -r_size.Y - 1.8, 0)).Position)
    
    local h = s.abs(tl.Y - bl.Y)
    local w = h * 0.6 -- Standard R15/R6 Aspect Ratio estimate
    
    local bx = pos.X - (w / 2)
    local by = pos.Y - (h / 2)

    -- 1. Box
    if cfg.features.box then
        self.canvas.box.Size = s.v2(w, h)
        self.canvas.box.Position = s.v2(bx, by)
        self.canvas.box.Color = cfg.colors.box
        self.canvas.box.Visible = true

        self.canvas.box_out.Size = s.v2(w, h)
        self.canvas.box_out.Position = s.v2(bx, by)
        self.canvas.box_out.Visible = true

        if cfg.features.fill then
            self.canvas.box_fill.Size = s.v2(w, h)
            self.canvas.box_fill.Position = s.v2(bx, by)
            self.canvas.box_fill.Color = cfg.colors.box
            self.canvas.box_fill.Visible = true
        else
            self.canvas.box_fill.Visible = false
        end
    else
        self.canvas.box.Visible = false
        self.canvas.box_out.Visible = false
        self.canvas.box_fill.Visible = false
    end

    -- 2. Name
    if cfg.features.name then
        local txt = self.model.Name
        if hum and hum.DisplayName ~= "" then txt = hum.DisplayName end
        
        self.canvas.name.Text = txt
        self.canvas.name.Position = s.v2(bx + (w / 2), by - 16)
        self.canvas.name.Color = cfg.colors.name
        self.canvas.name.Visible = true
    else
        self.canvas.name.Visible = false
    end

    -- 3. Health
    if cfg.features.health and hum then
        local hp = math.clamp(hum.Health / hum.MaxHealth, 0, 1)
        local bar_h = h * hp
        
        self.canvas.bar.Size = s.v2(2, bar_h)
        self.canvas.bar.Position = s.v2(bx - 5, (by + h) - bar_h)
        self.canvas.bar.Color = Color3.fromHSV(hp * 0.3, 1, 1) -- Red -> Green
        self.canvas.bar.Visible = true
        
        self.canvas.bar_out.Size = s.v2(4, h + 2)
        self.canvas.bar_out.Position = s.v2(bx - 6, by - 1)
        self.canvas.bar_out.Visible = true
    else
        self.canvas.bar.Visible = false
        self.canvas.bar_out.Visible = false
    end

    -- 4. Distance / Stats
    if cfg.features.distance then
        self.canvas.dist.Text = "[" .. s.floor(dist) .. "s]"
        self.canvas.dist.Position = s.v2(bx + (w / 2), by + h + 2)
        self.canvas.dist.Color = cfg.colors.dist
        self.canvas.dist.Visible = true
    else
        self.canvas.dist.Visible = false
    end
    
    if cfg.features.velocity then
        self.canvas.info.Text = s.floor(self.vel) .. " SPS"
        self.canvas.info.Position = s.v2(bx + w + 4, by)
        self.canvas.info.Color = cfg.colors.stats
        self.canvas.info.Visible = true
    else
        self.canvas.info.Visible = false
    end

    -- 5. Tracers
    if cfg.features.tracer then
        self.canvas.tracer.From = s.v2(s.cam.ViewportSize.X / 2, s.cam.ViewportSize.Y)
        self.canvas.tracer.To = s.v2(bx + (w / 2), by + h)
        self.canvas.tracer.Color = cfg.colors.tracer
        self.canvas.tracer.Visible = true
    else
        self.canvas.tracer.Visible = false
    end

    -- 6. Chinese Hat (3D)
    if cfg.features.hat and head then
        local center = head.Position + s.v3(0, 1.3, 0)
        local top_wts, t_vis = s.wts(s.cam, center + s.v3(0, 0.6, 0))
        
        if t_vis then
            local radius = 1.3
            local segments = 8
            local time_offset = os.clock() * 2
            
            for i = 1, segments do
                -- Logic: Draw lines from Top to Base Points, and Base Point to Base Point
                local ang = s.rad((i / segments) * 360 + (time_offset * 20))
                local next_ang = s.rad(((i + 1) / segments) * 360 + (time_offset * 20))
                
                local p1 = center + s.v3(s.cos(ang) * radius, -0.2, s.sin(ang) * radius)
                local p2 = center + s.v3(s.cos(next_ang) * radius, -0.2, s.sin(next_ang) * radius)
                
                local sc1, v1 = s.wts(s.cam, p1)
                local sc2, v2 = s.wts(s.cam, p2)
                
                -- Init lines if missing
                if not self.canvas.hat[i] then self.canvas.hat[i] = NewDraw("Line", {Thickness = 1}) end
                if not self.canvas.hat[i+segments] then self.canvas.hat[i+segments] = NewDraw("Line", {Thickness = 1}) end
                
                local l_spine = self.canvas.hat[i]
                local l_base = self.canvas.hat[i+segments]
                
                if v1 and v2 then
                    l_spine.From = s.v2(top_wts.X, top_wts.Y)
                    l_spine.To = s.v2(sc1.X, sc1.Y)
                    l_spine.Color = cfg.colors.hat
                    l_spine.Visible = true
                    
                    l_base.From = s.v2(sc1.X, sc1.Y)
                    l_base.To = s.v2(sc2.X, sc2.Y)
                    l_base.Color = cfg.colors.hat
                    l_base.Visible = true
                else
                    l_spine.Visible = false
                    l_base.Visible = false
                end
            end
        else
            -- Hide if head not vis
            for _, l in pairs(self.canvas.hat) do l.Visible = false end
        end
    else
        for _, l in pairs(self.canvas.hat) do l.Visible = false end
    end

    return true
end

-- // INTERFACE //
function sor_lib.Add(model, config)
    if sor_lib.registry[model] then sor_lib.registry[model]:Destruct() end
    sor_lib.registry[model] = Entity.new(model, config)
end

function sor_lib.Remove(model)
    if sor_lib.registry[model] then
        sor_lib.registry[model]:Destruct()
        sor_lib.registry[model] = nil
    end
end

function sor_lib.Init(config)
    sor_lib.config = config
    s.rs.RenderStepped:Connect(function()
        if not sor_lib.config.enabled then return end
        for model, ent in pairs(sor_lib.registry) do
            local success, err = pcall(function()
                local keep = ent:Update(sor_lib.config)
                if not keep then sor_lib.Remove(model) end
            end)
            if not success then sor_lib.Remove(model) end
        end
    end)
end

return sor_lib
