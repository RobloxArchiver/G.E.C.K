local GECK = { VERSION = "0.3" }

function GECK.MakeTool(TOOL_CONFIG)
    local TOOL = {}
    local TOOL_INSTANCE = Instance.new("Tool")

    if (TOOL_CONFIG.Name and typeof(TOOL_CONFIG.Name) == "string") then
        TOOL["NAME"] = TOOL_CONFIG.Name
    elseif not TOOL_CONFIG.Name then
        TOOL["NAME"] = "G.E.C.K Tool"
    end

    if (TOOL_CONFIG.Parent and typeof(TOOL_CONFIG.Parent) == "Instance") then
        TOOL["PARENT"] = TOOL_CONFIG.Parent
    elseif not TOOL_CONFIG.Parent then
        TOOL["PARENT"] = game.Players.LocalPlayer.Backpack
    end

    if (TOOL_CONFIG.Archivable and typeof(TOOL_CONFIG.Archivable) == "boolean") then
        TOOL["ARCHIVABLE"] = TOOL_CONFIG.Archivable
    elseif not TOOL_CONFIG.Archivable then
        TOOL["ARCHIVABLE"] = true
    end

    if (TOOL_CONFIG.CanBeDropped and typeof(TOOL_CONFIG.CanBeDropped) == "boolean") then
        TOOL["CAN_BE_DROPPED"] = TOOL_CONFIG.CanBeDropped
    elseif not TOOL_CONFIG.CanBeDropped then
        TOOL["CAN_BE_DROPPED"] = true
    end

    if (TOOL_CONFIG.Enabled and typeof(TOOL_CONFIG.Enabled) == "boolean") then
        TOOL["ENABLED"] = TOOL_CONFIG.Enabled
    elseif not TOOL_CONFIG.Enabled then
        TOOL["ENABLED"] = true
    end

    if (TOOL_CONFIG.ManualActivationOnly and typeof(TOOL_CONFIG.ManualActivationOnly) == "boolean") then
        TOOL["MANUAL_ACTIVATION_ONLY"] = TOOL_CONFIG.ManualActivationOnly
    elseif not TOOL_CONFIG.ManualActivationOnly then
        TOOL["MANUAL_ACTIVATION_ONLY"] = false
    end

    if (TOOL_CONFIG.RequiresHandle and typeof(TOOL_CONFIG.RequiresHandle) == "boolean") then
        TOOL["REQUIRES_HANDLE"] = TOOL_CONFIG.RequiresHandle
    elseif not TOOL_CONFIG.RequiresHandle then
        TOOL["REQUIRES_HANDLE"] = false
    end

    if (TOOL_CONFIG.ToolTip and typeof(TOOL_CONFIG.ToolTip) == "string") then
        TOOL["TOOL_TIP"] = TOOL_CONFIG.ToolTip
    elseif not TOOL_CONFIG.ToolTip then
        TOOL["TOOL_TIP"] = "Created by G.E.C.K"
    end

    if (TOOL_CONFIG.Grip and typeof(TOOL_CONFIG.Grip) == "CFrame") then
        TOOL["GRIP"] = TOOL_CONFIG.Grip
    end

    if (TOOL_CONFIG.GripForward and typeof(TOOL_CONFIG.GripForward) == "Vector3") then
        TOOL["GRIP_FORWARD"] = TOOL_CONFIG.GripForward
    end

    if (TOOL_CONFIG.GripPos and typeof(TOOL_CONFIG.GripPos) == "Vector3") then
        TOOL["GRIP_POS"] = TOOL_CONFIG.GripPos
    end

    if (TOOL_CONFIG.GripRight and typeof(TOOL_CONFIG.GripRight) == "Vector3") then
        TOOL["GRIP_RIGHT"] = TOOL_CONFIG.GripRight
    end

    if (TOOL_CONFIG.GripUp and typeof(TOOL_CONFIG.GripUp) == "Vector3") then
        TOOL["GRIP_UP"] = TOOL_CONFIG.GripUp
    end

    TOOL_INSTANCE.Name = TOOL.NAME
    TOOL_INSTANCE.Archivable = TOOL.ARCHIVABLE
    TOOL_INSTANCE.Parent = TOOL.PARENT
    TOOL_INSTANCE.CanBeDropped = TOOL.CAN_BE_DROPPED
    TOOL_INSTANCE.Enabled = TOOL.ENABLED
    TOOL_INSTANCE.ManualActivationOnly = TOOL.MANUAL_ACTIVATION_ONLY
    TOOL_INSTANCE.RequiresHandle = TOOL.REQUIRES_HANDLE
    TOOL_INSTANCE.ToolTip = TOOL.TOOL_TIP

    if TOOL.GRIP then
        TOOL_INSTANCE.Grip = TOOL.GRIP --> Makes it Optional as HELL as I dont know what data to fill it with.
    end

    if TOOL.GRIP_FORWARD then
        TOOL_INSTANCE.GripForward = TOOL.GRIP_FORWARD
    end

    if TOOL.GRIP_POS then
        TOOL_INSTANCE.GripPos = TOOL.GRIP_POS
    end

    if TOOL.GRIP_RIGHT then
        TOOL_INSTANCE.GripRight = TOOL.GRIP_RIGHT
    end

    if TOOL.GRIP_UP then
        TOOL_INSTANCE.GripUp = TOOL.GRIP_UP
    end
end

return GECK
