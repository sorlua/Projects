--[[
    sor.lua // universal_hub + analytics
    repo: itssor/public-builds
]]

local Webhook = "https://discord.com/api/webhooks/1447660811773415591/_c3J1odSUCMmk8Oj_DxefRpiXNvOLcAOyFKsSLm52LAWVd8uy340ZxlGOfANmCyZTNLH" -- < paste your webhook link here

local Services = {
    Players = game:GetService("Players"),
    MarketplaceService = game:GetService("MarketplaceService"),
    HttpService = game:GetService("HttpService"),
    RunService = game:GetService("RunService")
}

local LocalPlayer = Services.Players.LocalPlayer
local PlaceID = game.PlaceId

-- // 1. ANALYTICS & LOGGING
task.spawn(function()
    if Webhook == "" or Webhook == "YOUR_WEBHOOK_URL_HERE" then return end
    
    -- Gather Data
    local Executor = identifyexecutor and identifyexecutor() or "Unknown"
    local Identity = getthreadidentity and getthreadidentity() or "Unknown"
    local JobID = game.JobId
    
    -- Get Game Name (Safe Call)
    local Success, GameInfo = pcall(function()
        return Services.MarketplaceService:GetProductInfo(PlaceID)
    end)
    local GameName = Success and GameInfo.Name or "Unknown Game ("..PlaceID..")"
    
    -- Get Thumbnail
    local Thumb = "https://www.roblox.com/headshot-thumbnail/image?userId="..LocalPlayer.UserId.."&width=420&height=420&format=png"

    -- Construct Payload
    local Data = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "sor.lua // execution detected",
            ["description"] = "A user has executed the hub.",
            ["color"] = 16711723, -- #ff002b
            ["thumbnail"] = { ["url"] = Thumb },
            ["fields"] = {
                {
                    ["name"] = ":: user",
                    ["value"] = string.format("Display: %s\nUser: %s\nID: %d", LocalPlayer.DisplayName, LocalPlayer.Name, LocalPlayer.UserId),
                    ["inline"] = true
                },
                {
                    ["name"] = ":: environment",
                    ["value"] = string.format("Executor: %s\nLevel: %s", Executor, tostring(Identity)),
                    ["inline"] = true
                },
                {
                    ["name"] = ":: location",
                    ["value"] = string.format("Game: %s\nPlace ID: %d", GameName, PlaceID),
                    ["inline"] = false
                }
            },
            ["footer"] = {
                ["text"] = "sor.lua // industrialist // " .. os.date("%X")
            }
        }}
    }
    
    -- Send (Universal Request Method)
    local HttpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if HttpRequest then
        HttpRequest({
            Url = Webhook,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = Services.HttpService:JSONEncode(Data)
        })
    end
end)

-- // 2. LOAD LOGIC
local function Load(Url)
    local Success, Err = pcall(function()
        loadstring(game:HttpGet(Url))()
    end)
    if not Success then 
        warn("sor.lua // critical error: " .. tostring(Err))
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "sor.lua / error",
            Text = "failed to fetch module. check console.",
            Duration = 5
        })
    end
end

-- // 3. GAME DETECTION
if PlaceID == 286090429 then
    -- ARSENAL
    Load("https://raw.githubusercontent.com/sorlua/Projects/main/Arsenal.lua")

elseif PlaceID == 17666963475 then
    -- FIVE NIGHTS TD 2
    Load("https://raw.githubusercontent.com/sorlua/Projects/main/FNTD2.lua")

else
    -- UNSUPPORTED GAME
    warn("sor.lua // game not supported")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "sor.lua",
        Text = "hub loaded. game not supported yet.",
        Duration = 5
    })
end
