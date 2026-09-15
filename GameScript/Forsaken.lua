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
		"rbxassetid://82195709729963",
		"Player"
	),
	Window:Tab(
		"rbxassetid://96575338692675",
		"Settings"
	)
}

local Box = {
	Tab[1]:Box("Main"),
	Tab[2]:Box("Scripts"),
	Tab[3]:Box("Players"),
	Tab[4]:Box("Settings")
}
local Test = true
Box[1]:Toggle("Auto Generator", false, function(bool)
	Test = bool
end)
Box[1]:Toggle("ESP", false, function(bool)
	print(bool)
end)
Box[1]:Toggle("Acitve Speed Walk", false, function(bool)
	print(bool)
end)
Box[1]:Keybind("Acitve Speed Walk Key", Enum.KeyCode.E.Name, function(key)
	print("Key: ".. key)
end)
Box[1]:Slider("Speed Walk", 12, {0, 32}, {"int", nil}, function(Number)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):SetAttribute("BaseSpeed", Number)
	print(Number)
end)

Box[2]:Button("Infinit Yield", "Open", Color3.fromRGB(0, 255, 0), function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

Box[3]:DropDown("Select player", "Player...   ", "Player", {}, Color3.fromRGB(8, 26, 144), function(Item)
	print("Item: ".. Item)
end)

Box[4]:Slider("Transparency Window", 0, {0, 0.9}, {"float", 1}, function(Number)
	Window[1].GroupTransparency = Number
end)
Box[4]:Toggle("Switch", true, function(bool)
	Window[2].Enabled = bool
end)
Box[4]:Info("Verison v1.0.0")


while true do
	if Test then
		print("HF<JNFTN")
		if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") then
			for i, part in ipairs(workspace.Map.Ingame.Map:GetChildren()) do
				if part:IsA("Model") and part.Name == "Generator" then
					part.Remotes.RE:FireServer()
				end
			end
		end
	end
	task.wait(2.4)
end
