local GECK = { VERSION = "0.5" }

function GECK:Version()
    return self.VERSION
end

function GECK.MakeTool(TOOL_CONFIG)
    local TOOL = {}
    local TOOL_SCRIPT = {}
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

    if (TOOL_CONFIG.Script and typeof(TOOL_CONFIG.Script) == "function") then
        TOOL_SCRIPT["SCRIPT_SOURCE"] = TOOL_CONFIG.Script
        TOOL_SCRIPT["CREATED"] = true
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

    if (TOOL_SCRIPT.CREATED and TOOL_SCRIPT.CREATED == true) then
        TOOL_INSTANCE.Activated:Connect(function()
            TOOL_SCRIPT.SCRIPT_SOURCE()
        end)
    end
end

function GECK.MakePart(PART_CONFIG)
    local PART = {}
    local PART_INSTANCE = Instance.new("Part")

    if (PART_CONFIG.Name and typeof(PART_CONFIG.Name) == "string") then
        PART["NAME"] = PART_CONFIG.Name
    elseif not PART_CONFIG.Name then
        PART["NAME"] = "GPart" --> Would name "G.E.C.K Part" but this makes it easier to find. :D
    end

    if (PART_CONFIG.Parent and typeof(PART_CONFIG.Parent) == "Instance") then
        PART["PARENT"] = PART_CONFIG.Parent
    elseif not PART_CONFIG.Parent then
        PART["PARENT"] = game.Workspace
    end

    if (PART_CONFIG.Archivable and typeof(PART_CONFIG.Archivable) == "boolean") then
        PART["ARCHIVABLE"] = PART_CONFIG.Archivable
    elseif not PART_CONFIG.Archivable then
        PART["ARCHIVABLE"] = true
    end

    if (PART_CONFIG.Shape and typeof(PART_CONFIG.Shape) == "Enum") then
        PART["SHAPE"] = PART_CONFIG.Shape
    elseif not PART_CONFIG.Shape then
        PART["SHAPE"] = Enum.PartType.Block
    end

    if (PART_CONFIG.Anchored and typeof(PART_CONFIG.Anchored) == "boolean") then
        PART["ANCHORED"] = PART_CONFIG.Anchored
    elseif not PART_CONFIG.Anchored then
        PART["ANCHORED"] = true
    end

    if (PART_CONFIG.BrickColor and typeof(PART_CONFIG.BrickColor) == "BrickColor") then
        PART["BRICK_COLOR"] = PART_CONFIG.BrickColor
    elseif not PART_CONFIG.BrickColor then
        PART["BRICK_COLOR"] = BrickColor.new("White")
    end

    if (PART_CONFIG.CFrame and typeof(PART_CONFIG.CFrame) == "CFrame") then
        PART["CFRAME"] = PART_CONFIG.CFrame
    elseif not PART_CONFIG.CFrame then
        PART["CFRAME"] = CFrame.new(0, 0, 0)
    end
    
    if (PART_CONFIG.CanCollide and typeof(PART_CONFIG.CanCollide) == "boolean") then
        PART["CAN_COLLIDE"] = PART_CONFIG.CanCollide
    elseif not PART_CONFIG.CanCollide then
        PART["CAN_COLLIDE"] = true
    end

    if (PART_CONFIG.Color and typeof(PART_CONFIG.Color) == "Color3") then
        PART["COLOR"] = PART_CONFIG.Color
    elseif not PART_CONFIG.Color then
        PART["COLOR"] = Color3.new(1, 1, 1)
    end

    if (PART_CONFIG.Position and typeof(PART_CONFIG.Position) == "Vector3") then
        PART["POSITION"] = PART_CONFIG.Position
    elseif not PART_CONFIG.Position then
        PART["POSITION"] = Vector3.new(0, 0, 0)
    end

    if (PART_CONFIG.Size and typeof(PART_CONFIG.Size) == "Vector3") then
        PART["SIZE"] = PART_CONFIG.Size
    elseif not PART_CONFIG.Size then
        PART["SIZE"] = Vector3.new(1, 1, 1)
    end

    if (PART_CONFIG.Transparency and typeof(PART_CONFIG.Transparency) == "number") then
        PART["TRANSPARENCY"] = PART_CONFIG.Transparency
    elseif not PART_CONFIG.Transparency then
        PART["TRANSPARENCY"] = 0
    end

    PART_INSTANCE.Name = PART.NAME
    PART_INSTANCE.Archivable = PART.ARCHIVABLE
    PART_INSTANCE.Parent = PART.PARENT
    PART_INSTANCE.Shape = PART.SHAPE
    PART_INSTANCE.Anchored = PART.ANCHORED
    PART_INSTANCE.BrickColor = PART.BRICK_COLOR
    PART_INSTANCE.CFrame = PART.CFRAME
    PART_INSTANCE.CanCollide = PART.CAN_COLLIDE
    PART_INSTANCE.Color = PART.COLOR
    PART_INSTANCE.Position = PART.POSITION
    PART_INSTANCE.Size = PART.SIZE
    PART_INSTANCE.Transparency = PART.TRANSPARENCY
end

return GECK
