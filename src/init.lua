local GECK = { VERSION = "0.2" }

function GECK.MakeTool(TOOL_CONFIG)
    local TOOL = {}
    local TOOL_INSTANCE = Instance.new("Tool")

    --> Properties Inherited from Instance
    if TOOL_CONFIG.Name then
        TOOL["NAME"] = TOOL_CONFIG.Name
    elseif not TOOL_CONFIG.Name then
        TOOL["NAME"] = "G.E.C.K Tool"
    end

    if TOOL_CONFIG.Parent then
        TOOL["PARENT"] = TOOL_CONFIG.Parent
    elseif not TOOL_CONFIG.Parent then
        TOOL["PARENT"] = game.Players.LocalPlayer.Backpack
    end

    if TOOL_CONFIG.Archivable then
        TOOL["ARCHIVABLE"] = TOOL_CONFIG.Archivable
    elseif not TOOL_CONFIG.Archivable then
        TOOL["ARCHIVABLE"] = true
    end

    TOOL_INSTANCE.Name = TOOL.NAME
    TOOL_INSTANCE.Archivable = TOOL.ARCHIVABLE
    TOOL_INSTANCE.Parent = TOOL.PARENT
end

return GECK
