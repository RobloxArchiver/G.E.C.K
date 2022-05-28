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
})
```
