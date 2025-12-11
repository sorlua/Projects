-- sor.lua // visuals_engine_v1
-- architecture: drawing_api // dynamic_rigging

local sor_visuals = {
    _registry = {},
    _connections = {},
    _config = {
        enabled = true,
        team_check = false,
        render_dist = 2000,
        refresh_rate = 0, -- 0 = renderstepped
        font = 2, -- 0=UI, 1=System, 2=Plex, 3=Monospace
        text_size = 13,
        limit_text_width = true
    }
}

local s = {
    rs = game:GetService("RunService"),
    ws = game:GetService("Workspace"),
    plrs = game:GetService("Players"),
    cam = game:GetService("Workspace").CurrentCamera,
    wts = game:GetService("Workspace").CurrentCamera.WorldToViewportPoint
}

local Drawing = Drawing
local Vector2 = Vector2.new
local Vector3 = Vector3.new
local Color3 = Color3.new
local floor = math.floor
local atan2 = math.atan2
local cos = math.cos
local sin = math.sin
local pi = math.pi

-- // drawing object pool
local function create_draw(type, props)
    local obj = Drawing.new(type)
    for k, v in pairs(props) do obj[k] = v end
    return obj
end

-- // class: entity
local Entity = {}
Entity.__index = Entity

function Entity.new(model, config)
    local self = setmetatable({}, Entity)
    self.model = model
    self.config = config or {}
    
    -- overrides for custom models
    self.root_name = config.root_name or "HumanoidRootPart"
    self.head_name = config.head_name or "Head"
    self.hum_name = config.hum_name or "Humanoid"
    
    -- state
    self.drawings = {
        box = create_draw("Square", {Thickness = 1, Filled = false, ZIndex = 2}),
        box_fill = create_draw("Square", {Thickness = 1, Filled = true, Transparency = 0.2, ZIndex = 1}),
        box_outline = create_draw("Square", {Thickness = 3, Filled = false, ZIndex = 1, Color = Color3(0,0,0)}),
        
        name = create_draw("Text", {Center = true, Outline = true, ZIndex = 3}),
        dist = create_draw("Text", {Center = true, Outline = true, ZIndex = 3}),
        tool = create_draw("Text", {Center = true, Outline = true, ZIndex = 3}),
        stats = create_draw("Text", {Center = false, Outline = true, ZIndex = 3}), -- Velocity/Health text
        
        health_bar = create_draw("Square", {Thickness = 1, Filled = true, ZIndex = 2}),
        health_outline = create_draw("Square", {Thickness = 1, Filled = true, ZIndex = 1, Color = Color3(0,0,0)}),
        
        tracer = create_draw("Line", {Thickness = 1, ZIndex = 1}),
        gaze = create_draw("Line", {Thickness = 1, ZIndex = 2}),
        
        skel_main = {}, -- table of lines
        hat_lines = {}, -- table of lines (3d) or single triangle (2d)
        
        arrow = create_draw("Triangle", {Thickness = 1, Filled = true, ZIndex = 4})
    }
    
    self.last_pos = Vector3(0,0,0)
    self.velocity_mag = 0
    self.last_update = os.clock()
    
    return self
end

function Entity:destruct()
    for _, v in pairs(self.drawings) do
        if type(v) == "table" and not v.Remove then
            for _, line in pairs(v) do line:Remove() end
        else
            v:Remove()
        end
    end
    self.drawings = nil
end

function Entity:get_part(name)
    return self.model:FindFirstChild(name)
end

function Entity:get_health()
    local hum = self.model:FindFirstChild(self.hum_name)
    if hum then return hum.Health, hum.MaxHealth end
    return 100, 100 -- fallback
end

function Entity:is_alive()
    local h, max = self:get_health()
    return h > 0 and self.model.Parent ~= nil
end

-- // math: 3d bounding box calc
function Entity:get_bounds(root, parts)
    local min_x, min_y, max_x, max_y = 9e9, 9e9, -9e9, -9e9
    
    for _, part in pairs(parts) do
        if part:IsA("BasePart") then
            local size = part.Size
            local cf = part.CFrame
            
            local corners = {
                cf * Vector3(size.X/2, size.Y/2, size.Z/2),
                cf * Vector3(-size.X/2, size.Y/2, size.Z/2),
                cf * Vector3(size.X/2, -size.Y/2, size.Z/2),
                cf * Vector3(-size.X/2, -size.Y/2, size.Z/2),
                cf * Vector3(size.X/2, size.Y/2, -size.Z/2),
                cf * Vector3(-size.X/2, size.Y/2, -size.Z/2),
                cf * Vector3(size.X/2, -size.Y/2, -size.Z/2),
                cf * Vector3(-size.X/2, -size.Y/2, -size.Z/2),
            }
            
            for _, corner in pairs(corners) do
                local pos, vis = s.wts(s.cam, corner)
                if vis then
                    if pos.X < min_x then min_x = pos.X end
                    if pos.Y < min_y then min_y = pos.Y end
                    if pos.X > max_x then max_x = pos.X end
                    if pos.Y > max_y then max_y = pos.Y end
                end
            end
        end
    end
    
    return min_x, min_y, max_x, max_y
end

function Entity:update(settings)
    if not self.model or not self.model.Parent then 
        self:destruct()
        return false 
    end

    local root = self:get_part(self.root_name)
    local head = self:get_part(self.head_name)
    local hum = self.model:FindFirstChild(self.hum_name)
    
    -- visibility reset
    local function set_vis(state)
        for _, v in pairs(self.drawings) do
            if type(v) == "table" and not v.Remove then
                for _, l in pairs(v) do l.Visible = state end
            else
                v.Visible = state
            end
        end
    end
    
    if not root or not self:is_alive() then 
        set_vis(false)
        return true 
    end

    -- logic: velocity
    local curr_time = os.clock()
    local delta = curr_time - self.last_update
    if delta > 0.1 then
        self.velocity_mag = (root.Position - self.last_pos).Magnitude / delta
        self.last_pos = root.Position
        self.last_update = curr_time
    end

    -- logic: screen projection
    local root_pos, root_vis = s.wts(s.cam, root.Position)
    local head_pos = head and s.wts(s.cam, head.Position) or root_pos
    local dist = (s.cam.CFrame.Position - root.Position).Magnitude
    
    -- check: distance & team
    if dist > settings.render_dist then set_vis(false); return true end
    
    -- check: team
    if settings.team_check then
        local plr = s.plrs:GetPlayerFromCharacter(self.model)
        if plr and plr.Team == s.plrs.LocalPlayer.Team then
            set_vis(false); return true
        end
    end

    -- render: offscreen arrow
    if settings.features.offscreen_arrows and not root_vis then
        local relative = s.cam.CFrame:PointToObjectSpace(root.Position)
        local angle = atan2(relative.Y, relative.X) + pi/2
        
        -- arrow logic
        local center = Vector2(s.cam.ViewportSize.X/2, s.cam.ViewportSize.Y/2)
        local radius = 300
        local arrow_pos = center + Vector2(cos(angle)*radius, sin(angle)*radius)
        
        self.drawings.arrow.PointA = arrow_pos + Vector2(cos(angle)*20, sin(angle)*20)
        self.drawings.arrow.PointB = arrow_pos + Vector2(cos(angle - 0.5)*10, sin(angle - 0.5)*10)
        self.drawings.arrow.PointC = arrow_pos + Vector2(cos(angle + 0.5)*10, sin(angle + 0.5)*10)
        self.drawings.arrow.Color = settings.colors.arrow
        self.drawings.arrow.Visible = true
        
        -- hide others
        for k,v in pairs(self.drawings) do if k ~= "arrow" then if type(v)=="table" then for _,l in pairs(v) do l.Visible=false end else v.Visible=false end end end
        return true
    else
        self.drawings.arrow.Visible = false
    end

    if not root_vis then set_vis(false); return true end

    -- logic: bounding box
    local min_x, min_y, max_x, max_y = self:get_bounds(root, self.model:GetChildren())
    local height = max_y - min_y
    local width = max_x - min_x

    -- render: box
    if settings.features.box then
        local box = self.drawings.box
        local outline = self.drawings.box_outline
        
        box.Size = Vector2(width, height)
        box.Position = Vector2(min_x, min_y)
        box.Color = settings.colors.box
        box.Visible = true
        
        outline.Size = Vector2(width, height)
        outline.Position = Vector2(min_x, min_y)
        outline.Visible = true
        
        if settings.features.box_fill then
            local fill = self.drawings.box_fill
            fill.Size = Vector2(width, height)
            fill.Position = Vector2(min_x, min_y)
            fill.Color = settings.colors.box
            fill.Visible = true
        end
    else
        self.drawings.box.Visible = false
        self.drawings.box_outline.Visible = false
        self.drawings.box_fill.Visible = false
    end

    -- render: health
    if settings.features.health_bar then
        local hp, max = self:get_health()
        local pct = math.clamp(hp/max, 0, 1)
        local bar_h = height * pct
        
        local bar = self.drawings.health_bar
        local out = self.drawings.health_outline
        
        bar.Position = Vector2(min_x - 6, max_y - bar_h)
        bar.Size = Vector2(3, bar_h)
        bar.Color = Color3(1-pct, pct, 0) -- red to green lerp
        bar.Visible = true
        
        out.Position = Vector2(min_x - 7, min_y - 1)
        out.Size = Vector2(5, height + 2)
        out.Visible = true
        
        if settings.features.health_text then
            local txt = self.drawings.stats
            txt.Text = floor(hp) .. " HP"
            txt.Position = Vector2(min_x - 30, min_y)
            txt.Color = bar.Color
            txt.Size = settings.text_size
            txt.Font = settings.font
            txt.Visible = true
        end
    else
        self.drawings.health_bar.Visible = false
        self.drawings.health_outline.Visible = false
        self.drawings.stats.Visible = false
    end

    -- render: name & info
    if settings.features.name then
        local n = self.drawings.name
        n.Text = self.model.Name
        if self.model:FindFirstChild("Humanoid") and self.model.Humanoid.DisplayName ~= "" then
            n.Text = self.model.Humanoid.DisplayName
        end
        n.Position = Vector2(min_x + width/2, min_y - 18)
        n.Color = settings.colors.name
        n.Size = settings.text_size
        n.Font = settings.font
        n.Visible = true
    end

    if settings.features.distance then
        local d = self.drawings.dist
        d.Text = "[" .. floor(dist) .. "m]"
        d.Position = Vector2(min_x + width/2, max_y + 4)
        d.Color = settings.colors.distance
        d.Size = settings.text_size - 1
        d.Font = settings.font
        d.Visible = true
    end
    
    if settings.features.velocity then
        local v_txt = self.drawings.tool -- reusing tool slot for secondary info if needed, or add logic
        -- extending stats text instead
        local old = self.drawings.stats.Text
        if settings.features.health_text then
            self.drawings.stats.Text = old .. "\n" .. floor(self.velocity_mag) .. " SPS"
        else
            self.drawings.stats.Text = floor(self.velocity_mag) .. " SPS"
            self.drawings.stats.Position = Vector2(min_x - 40, min_y)
            self.drawings.stats.Visible = true
            self.drawings.stats.Color = settings.colors.stats
        end
    end

    -- render: tracer
    if settings.features.tracers then
        local t = self.drawings.tracer
        local origin = Vector2(s.cam.ViewportSize.X/2, s.cam.ViewportSize.Y) -- Bottom center
        if settings.features.tracer_origin == "Mouse" then origin = s.uis:GetMouseLocation() end
        if settings.features.tracer_origin == "Center" then origin = Vector2(s.cam.ViewportSize.X/2, s.cam.ViewportSize.Y/2) end
        
        t.From = origin
        t.To = Vector2(min_x + width/2, max_y)
        t.Color = settings.colors.tracer
        t.Visible = true
    else
        self.drawings.tracer.Visible = false
    end

    -- render: chinese hat (3d cone)
    if settings.features.chinese_hat and head then
        local top = head.Position + Vector3(0, 1.5, 0)
        local top_wts, top_vis = s.wts(s.cam, top)
        
        if top_vis then
            local points = {}
            local radius = 1.5
            for i = 1, 8 do
                local angle = (i/8) * pi * 2
                local offset = Vector3(cos(angle)*radius, -0.5, sin(angle)*radius)
                local p_wts = s.wts(s.cam, top + offset)
                table.insert(points, Vector2(p_wts.X, p_wts.Y))
            end
            
            -- manage lines
            for i = 1, 8 do
                if not self.drawings.hat_lines[i] then
                    self.drawings.hat_lines[i] = create_draw("Line", {Thickness = 1, Transparency = 0.8})
                end
                
                local l = self.drawings.hat_lines[i]
                l.From = Vector2(top_wts.X, top_wts.Y)
                l.To = points[i]
                l.Color = settings.colors.hat
                l.Visible = true
                
                -- connect base
                if not self.drawings.hat_lines[i+8] then
                    self.drawings.hat_lines[i+8] = create_draw("Line", {Thickness = 1, Transparency = 0.8})
                end
                local base = self.drawings.hat_lines[i+8]
                base.From = points[i]
                base.To = points[(i%8)+1]
                base.Color = settings.colors.hat
                base.Visible = true
            end
        end
    else
        for _, l in pairs(self.drawings.hat_lines) do l.Visible = false end
    end

    return true
end

-- // api
function sor_visuals.Add(model, config)
    local ent = Entity.new(model, config)
    sor_visuals._registry[model] = ent
    return ent
end

function sor_visuals.Remove(model)
    if sor_visuals._registry[model] then
        sor_visuals._registry[model]:destruct()
        sor_visuals._registry[model] = nil
    end
end

function sor_visuals.Start(settings)
    sor_visuals._config = settings
    s.rs.RenderStepped:Connect(function()
        if not sor_visuals._config.enabled then return end
        for model, ent in pairs(sor_visuals._registry) do
            local success = pcall(function() ent:update(sor_visuals._config) end)
            if not success then ent:destruct(); sor_visuals._registry[model] = nil end
        end
    end)
end

return sor_visuals
