local HttpService = game:GetService("HttpService")
local GECK = { VERSION = "0.1" }

function GECK.MakeTool(TOOL_CONFIG)
    local TOOL = {}
    local TOOL_INSTANCE = Instance.new("Tool")

    if (TOOL_CONFIG.Name and type(TOOL_CONFIG.Name) == "string") then
        TOOL["NAME"] = TOOL_CONFIG.Name
    elseif not TOOL_CONFIG.Name then
        TOOL["NAME"] = "G.E.C.K Tool"
    end

    if (TOOL_CONFIG.Parent and type(TOOL_CONFIG.Parent) == "userdata") then
        TOOL["PARENT"] = TOOL_CONFIG.Parent
    elseif not TOOL_CONFIG.Parent then
        TOOL["PARENT"] = game.Players.LocalPlayer.Backpack
    end

    if (TOOL_CONFIG.Archivable and type(TOOL_CONFIG.Archivable) == "boolean") then
        TOOL["ARCHIVABLE"] = TOOL_CONFIG.Archivable
    elseif not TOOL_CONFIG.Archivable then
        TOOL["ARCHIVABLE"] = true
    end

    TOOL_INSTANCE.Name = TOOL.NAME
    TOOL_INSTANCE.Archivable = TOOL.ARCHIVABLE
    TOOL_INSTANCE.Parent = TOOL.PARENT
end

return GECK
