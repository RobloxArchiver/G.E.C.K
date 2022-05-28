# G.E.C.K
Library for Roblox Exploiting meant to make Instance Creation easier!

# Background::Credits::Information

G.E.C.K is based off the Fallout Series's G.E.C.K or "Garden of Eden Creation Kit."

Credits: 
    Roblox Archiver (Head Developer)

# Documentation

## Loadstring

To use the library you will need to request the library with loadstring.

```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/G.E.C.K/main/src/init.lua"))()
```

## `library.MakeTool(TOOL_CONFIG)`

TOOL_CONFIG is a table that stores data, this allows for the "Is there or not" nature of G.E.C.K. 
Most if not ALL instances are optional. 

```lua
library.MakeTool({
    Name = "Test Tool", --> Optional /w Default. Default: "G.E.C.K Tool"
    Parent = game.Workspace, --> Optional /w Default. Default: game.Players.LocalPlayer.Backpack
    Archivable = true --> Optional /w Default. Default: true
    CanBeDropped = true, --> Optional /w Default. Default: true
    Enabled = true, --> Optional /w Default. Default: true
    ManualActivationOnly = false, --> Optional /w Default. Default: false
    RequiresHandle = false, --> Optional /w Default. Default: false
    ToolTip = "Test Tooltip", --> Optional /w Default. Default: "Created by G.E.C.K"
    Grip = CFrame.new(0, 0, 0), --> Optional::NO DEFAULT
    GripForward = Vector3.new(0, 0, 0), --> Optional::NO DEFAULT
    GripPos = Vector3.new(0, 0, 0), --> Optional::NO DEFAULT
    GripRight = Vector3.new(0, 0, 0), --> Optional::NO DEFAULT
    GripUp = Vector3.new(0, 0, 0), --> Optional::NO DEFAULT
    Script = function()  --> Optional::NO DEFAULT
        print("hi!") 
    end
})
```

## `library.MakePart(PART_CONFIG)`

Same as TOOL_CONFIG, PART_CONFIG is a table containing optional data. Mostly everything has a default, and all is optional!

```lua
library.MakePart({
    Name = "Test Part", --> Optional::Default = "GPart"
    Parent = game.Workspace, --> Optional::Default = "game.Workspace"
    Archivable = true, --> Optional::Default = true
    Shape = Enum.PartType.Block, --> Optional::Default = Enum.PartType.Block
    Anchored = true, --> Optional::Default = true
    BrickColor = BrickColor.new("White"), --> Optional::Default = true
    CFrame = CFrame.new(0, 0, 0), --> Optional::Default = CFrame.new(0, 0, 0)
    CanCollide = false, --> Optional::Default = false
    Color = Color3.new(1, 1, 1), --> Optional::Default = Color3.new(1, 1, 1)
    Position = Vector3.new(0, 0, 0), --> Optional::Default = Vector3.new(0, 0, 0)
    Size = Vector3.new(1, 1, 1), --> Optional::Default = Vector3.new(1, 1, 1)
    Transparency = 0 --> Optional::Default = 0
})
