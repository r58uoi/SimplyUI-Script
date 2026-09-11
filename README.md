# SimplyUI
SimplyUI is a simple open‑source script for Roblox.
<p align="center">
  <img src="https://raw.githubusercontent.com/r58uoi/SimplyUI-Script/refs/heads/main/Asset/LogoSimply.svg" width="560" height="150" alt="SimplyUI logo">
</p>

#
### Basics
To import the Library you need to enter these
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/r58uoi/SimplyUI-Script/refs/heads/main/SimpleUI.lua"))()
```
Then u need to create a Window using this:
```lua
local Window = Library:CreateUI(
	game.CoreGui,--game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"),
	{true, true}, -- Size and Position Window
	UDim2.new(0, 500, 0, 300), -- Main Size
	UDim2.new(0, 100, 0, 100), -- Main Position
	Vector2.new(300, 100),  -- MinSize
	{true, true, true} -- 1. MiniSize, 2. MaxSize, 3. Close
)

--[[
  PATH: OBLECT
  SIZE OR POSITION CONF: TABLE {BOOLEAN, BOOLEAN}
  MAIN SIZE WINDOW: UDIM2
  MAIN POSITION WINDOW: UDIM2
  MIN SIZE WINDOW: VECTOR2
  BUTTONS CONF: {BOOLEAN, BOOLEAN, BOOLEAN}
]]
```
### Creating a Tab
```lua
local Tab = {
	Window:Tab(
		"rbxassetid://116558416127511",
		"Main"
	)
}

--[[
  ASSET FOR ROBLOX: STRING
  NAME: STRING
]]
```
### Creating a Box
```lua
local Box = {
	Tab[1]:Box("Main")
}

--[[
  NAME: STRING
]]
```
### Creating Toggles
```lua
Box[1]:Toggle("Toggle", false, function(bool)
	-- Code here
end)

--[[
  NAME: STRING
  VALUE: BOOLEAN
]]
```
### Creating Buttons
```lua
Box[1]:Button("Button", "Open", Color3.fromRGB(0, 255, 0), function()
	-- Code here
end)

--[[
  NAME: STRING
  VALUE: STRING
  VALUE COLOR: COLOR3
]]
```
### Creating Textbox
```lua
Box[1]:Input("Input", "1-255", "1", "str", {}, true, function(Text)
	-- Code here
end)

--[[
  NAME: STRING
  VALUE: INTEGER
  PLACEHOLDER TEXT: STRING
  TEXT BOX: STRING or INTEGER or FLOAT
  TYPE: STRING (str or int or float)
  RANGE: TABLE {INTEGER or FLOAT (MIN), INTEGER or FLOAT (MAX)}, if TYPE is equal to str, then {}
  TEXT EMPTY: BOOLEAN
]]
```
### Creating Colors
```lua
Box[1]:PickerColor("Color", Color3.fromRGB(255, 255, 255), function(Color)
	-- Code here
end)

--[[
  NAME: STRING
  VALUE: COLOR3
]]
```
### Creating Dropdowns
```lua
Box[1]:DropDown("DropDown", "Item1", "Item", {"Item1", "Item2", "Item3"}, Color3.fromRGB(229, 179, 0), function(Item)
	-- Code here
end)

--[[
  NAME: STRING
  VALUE: STRING
  TYPE: STRING (Item or Player)
  RANGE: TABLE {STRING}, if TYPE is equal to Player, then {}
  COLOR: COLOR3
]]
```
### Creating Keybinds
```lua
Box[1]:Keybind("Keybind", Enum.KeyCode.E.Name, function(key)
	-- Code here
end)

--[[
  NAME: STRING
  VALUE: KEYCODE
]]
```
### Creating Sliders
```lua
Box[1]:Slider("Slider", 50, {0, 100}, {"int", nil}, function(Number)
	-- Code here
end)

--[[
  NAME: STRING
  VALUE: INTEGER
  RANGE: TABLE {INTEGER or FLOAT (MIN), INTEGER or FLOAT (MAX)}
  TYPE: TABLE {STRING (int or float), INTEGER (or nil)}
]]
```
### Creating Info
```lua
Box[1]:Info("Info")

--[[
  NAME: STRING
]]
```
# A complete example in code.
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/r58uoi/SimplyUI-Script/refs/heads/main/SimpleUI.lua"))()

local Window = Library:CreateUI(
	game.CoreGui,
	{true, true},
	UDim2.new(0, 500, 0, 300),
	UDim2.new(0, 100, 0, 100),
	Vector2.new(300, 100),
	{true, true, true}
)
local Tab = {
	Window:Tab(
		"rbxassetid://116558416127511",
		"Main"
	),
	Window:Tab(
		"rbxassetid://122390149904203",
		"Misc"
	),
	Window:Tab(
		"rbxassetid://115519534027040",
		"Combat"
	),
	Window:Tab(
		"rbxassetid://117235363388702",
		"Farm"
	),
	Window:Tab(
		"rbxassetid://82195709729963",
		"Player"
	),
	Window:Tab(
		"rbxassetid://96575338692675",
		"Settings"
	),
}

local Box = {
	Tab[1]:Box("Main"),
	Tab[2]:Box("Scripts"),
	Tab[3]:Box("Mode combats"),
	Tab[4]:Box("Farms"),
	Tab[5]:Box("Players"),
	Tab[6]:Box("Settings"),
}

Box[1]:Toggle("Toggle", false, function(bool)
	print(bool)
end)
Box[1]:Button("Button", "Open", Color3.fromRGB(0, 255, 0), function()
	print("Cilck")
end)
Box[1]:Input("Input", "1-255", "1", "str", {}, true, function(Text)
	print("Text: ".. Text)
end)
Box[1]:PickerColor("Color", Color3.fromRGB(255, 255, 255), function(Color)
	print("Color: ".. Color.R .. ",".. Color.G .. ",".. Color.B)
end)
Box[1]:DropDown("DropDown", "Item1", "Item", {"Item1", "Item2", "Item3"}, Color3.fromRGB(229, 179, 0), function(Item)
	print("Item: ".. Item)
end)
Box[1]:Keybind("Keybind", Enum.KeyCode.E.Name, function(key)
	print("Key: ".. key)
end)
Box[1]:Slider("Slider walk", 16, {0, 100}, {"int", nil}, function(Number)
	print(Number)
end)
Box[1]:Info("Info")


Box[5]:DropDown("Select player", "Player...   ", "Player", {}, Color3.fromRGB(8, 26, 144), function(Item)
	print("Item: ".. Item)
end)

Box[6]:Slider("Transparency Window", 0, {0, 0.9}, {"float", 1}, function(Number)
	Window[1].GroupTransparency = Number
end)
Box[6]:Toggle("Switch", true, function(bool)
	Window[2].Enabled = bool
end)
Box[6]:Info("Verison v1.0.0")
```
