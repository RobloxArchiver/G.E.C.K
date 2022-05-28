local GECK = { VERSION = "0.1" }

function GECK.MakeTool(TOOL_CONFIG)
    local TOOL = {}
    local TOOL_INSTANCE = Instance.new("Tool", game.Players.LocalPlayer.Backpack)

    if TOOL_CONFIG.Name then
        TOOL["NAME"] = TOOL_CONFIG.Name
    else
        TOOL["NAME"] = "G.E.C.K Tool"
    end

    if TOOL_CONFIG.Parent then
        TOOL["PARENT"] = TOOL_CONFIG.Parent
    end

    if TOOL_CONFIG.Archivable then
        TOOL["ARCHIVABLE"] = TOOL_CONFIG.Archivable
    else
        TOOL["ARCHIVABLE"] = true
    end

    TOOL_INSTANCE.Name = TOOL.NAME
    TOOL_INSTANCE.Archivable = TOOL.ARCHIVABLE
    TOOL_INSTANCE.Parent = TOOL.PARENT
end

return GECK
