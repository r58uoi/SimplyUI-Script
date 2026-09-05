local SimplyUI = {}

local UI_Table = {
	ScreenGui = Instance.new("ScreenGui"),
	BillboardGui = Instance.new("BillboardGui"),
	Frame = Instance.new("Frame"),
	CanvasGroup = Instance.new("CanvasGroup"),
	ScrollingFrame = Instance.new("ScrollingFrame"),
	TextLabel = Instance.new("TextLabel"),
	TextBox = Instance.new("TextBox"),
	TextButton = Instance.new("TextButton"),
	ImageButton = Instance.new("ImageButton"),
	ImageLabel = Instance.new("ImageLabel"),
	UIListLayout = Instance.new("UIListLayout"),
	UIPadding = Instance.new("UIPadding"),
	UIShadow = Instance.new("UIShadow"),
	UISizeConstraint = Instance.new("UISizeConstraint"),
	UIDragger = Instance.new("UIDragDetector"),
	UIGradient = Instance.new("UIGradient"),
	BoolValue = Instance.new("BoolValue"),
	StringValue = Instance.new("StringValue"),
	ColorValue = Instance.new("Color3Value")
}

UI_Table["ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI_Table["Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Table["Frame"].BorderSizePixel = 0
UI_Table["Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)

UI_Table["TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Table["TextLabel"].BorderSizePixel = 0
UI_Table["TextLabel"].TextColor3 = Color3.fromRGB(0, 0, 0)
UI_Table["TextLabel"].BackgroundTransparency = 1


UI_Table["TextButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Table["TextButton"].BorderSizePixel = 0
UI_Table["TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
UI_Table["TextButton"].TextColor3 = Color3.fromRGB(0, 0, 0)

UI_Table["TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Table["TextBox"].BorderSizePixel = 0
UI_Table["TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
UI_Table["TextBox"].TextColor3 = Color3.fromRGB(0, 0, 0)
UI_Table["TextBox"].ClearTextOnFocus = false


UI_Table["ImageLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Table["ImageLabel"].BorderSizePixel = 0
UI_Table["ImageLabel"].Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
UI_Table["ImageLabel"].BackgroundTransparency = 1

UI_Table["ImageButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Table["ImageButton"].BorderSizePixel = 0
UI_Table["ImageButton"].BackgroundTransparency = 1

UI_Table["ScrollingFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_Table["ScrollingFrame"].BorderSizePixel = 0
UI_Table["ScrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
UI_Table["ScrollingFrame"].ScrollBarThickness = 5
UI_Table["ScrollingFrame"].VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
UI_Table["ScrollingFrame"].ScrollingDirection = Enum.ScrollingDirection.Y
UI_Table["ScrollingFrame"].AutomaticCanvasSize = Enum.AutomaticSize.Y
UI_Table["ScrollingFrame"].CanvasSize = UDim2.new(0, 0, 0, 0)
UI_Table["ScrollingFrame"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
UI_Table["ScrollingFrame"].MidImage = "rbxassetid://5234388158"
UI_Table["ScrollingFrame"].TopImage = "rbxassetid://5234388158"
UI_Table["ScrollingFrame"].BottomImage = "rbxassetid://5234388158"
UI_Table["ScrollingFrame"].BackgroundTransparency = 1

UI_Table["UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder

UI_Table["UIShadow"].BlurRadius = UDim.new(0, 20)
UI_Table["UIShadow"].Transparency = 0.5

--local function DarkColor(Object)
--	for _, part in pairs(Object:GetDescendants()) do
--		if part:IsA("ImageButton") then
--			part.ImageColor3 = Color3.fromRGB(255, 255, 255)
--			if part.BorderSizePixel == 1 then
--				part.BorderColor3 = Color3.fromRGB(255, 255, 255)
--			end
--		elseif part:IsA("ImageLabel") then
--			part.ImageColor3 = Color3.fromRGB(255, 255, 255)
--			if part.BorderSizePixel == 1 then
--				part.BorderColor3 = Color3.fromRGB(255, 255, 255)
--			end
--		elseif part:IsA("Frame") or part:IsA("CanvasGroup") then
--			if part.BackgroundTransparency ~= 1 then
--				if part.BorderSizePixel == 1 then
--					part.BorderColor3 = Color3.fromRGB(255, 255, 255)
--				end
--				part.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
--			end
			
--		elseif part:IsA("TextLabel") then
--			part.TextColor3 = Color3.fromRGB(255, 255, 255)
--		else
--			print("Null")
--			--if part.BorderSizePixel == 1 then
--				--part.BorderColor3 = Color3.fromRGB(255, 255, 255)
--			--end
--		end
--	end
--end

function SipmleUI:CreateUI(GameGuiPath, SettingsGui, SizeGui, PosGui, MinSizeGui, BarButton)
	local UI_GUI_Bulider = {
		--GUI

		MainGui = UI_Table["ScreenGui"]:Clone(),
		ButtonSimply = UI_Table["ImageButton"]:Clone(),
		MainFrame = UI_Table["CanvasGroup"]:Clone(),
		UIShadow = UI_Table["UIShadow"]:Clone(),
		UISizeConstraint = UI_Table["UISizeConstraint"]:Clone(),

		FrameBar = UI_Table["Frame"]:Clone(),

		UIListLayoutOne = UI_Table["UIListLayout"]:Clone(),
		FrameBarOne = UI_Table["Frame"]:Clone(),

		UIListLayoutOneOne = UI_Table["UIListLayout"]:Clone(),
		ImageLabelGame = UI_Table["ImageLabel"]:Clone(),
		TextLabelGame = UI_Table["TextLabel"]:Clone(),

		FrameBarTwo = UI_Table["Frame"]:Clone(),

		UIListLayoutOneTwo = UI_Table["UIListLayout"]:Clone(),
		ImageButtonClose = UI_Table["ImageButton"]:Clone(),
		ImageButtonMaxMinSize = UI_Table["ImageButton"]:Clone(),
		ImageButtonMiniSize = UI_Table["ImageButton"]:Clone(),

		FrameBox = UI_Table["Frame"]:Clone(),

		FrameBoxScroll = UI_Table["Frame"]:Clone(),

		FrameMenuScroll = UI_Table["Frame"]:Clone(),
		ScrollingFrameMenu = UI_Table["ScrollingFrame"]:Clone(),

		UIListLayoutTwo = UI_Table["UIListLayout"]:Clone(),

		SizeFrame = UI_Table["Frame"]:Clone(),


		TabFrame = UI_Table["Frame"]:Clone(),
		ScrollingFrameTab = UI_Table["ScrollingFrame"]:Clone(),
		UIListLayoutTab = UI_Table["UIListLayout"]:Clone(),
		ButtonTab = UI_Table["TextButton"]:Clone(),

		ColorFrame = UI_Table["Frame"]:Clone(),
		--ButtonColorRGB = UI_Table["TextButton"]:Clone(),
		--ButtonColorSelect = UI_Table["TextButton"]:Clone(),

		UIListLayoutColor = UI_Table["UIListLayout"]:Clone(),

		FrameBoxColor = UI_Table["Frame"]:Clone(),
		FrameBoxColorRGB = UI_Table["Frame"]:Clone(),

		FrameColorInputBox = UI_Table["Frame"]:Clone(),
		UIListLayoutInputColor = UI_Table["UIListLayout"]:Clone(),
		InputRed = UI_Table["TextBox"]:Clone(),
		InputGreen = UI_Table["TextBox"]:Clone(),
		InputBlue = UI_Table["TextBox"]:Clone(),

		InputHEX = UI_Table["TextBox"]:Clone(),

		FrameColorButtonBox = UI_Table["Frame"]:Clone(),
		ButtonColorOK = UI_Table["TextButton"]:Clone(),
		ButtonColorCancel = UI_Table["TextButton"]:Clone(),


	}

	UI_GUI_Bulider["MainGui"].Parent = GameGuiPath --game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	UI_GUI_Bulider["MainGui"].Name = "SimplyUI"

	UI_GUI_Bulider["ButtonSimply"].Parent = UI_GUI_Bulider["MainGui"]
	UI_GUI_Bulider["ButtonSimply"].BorderSizePixel = 1
	UI_GUI_Bulider["ButtonSimply"].Size = UDim2.new(0, 50, 0, 50)
	UI_GUI_Bulider["ButtonSimply"].Position = UDim2.new(0, 100, 0, 100)
	UI_GUI_Bulider["ButtonSimply"].Image = "rbxassetid://77754544522243"
	UI_GUI_Bulider["ButtonSimply"].ImageColor3 = Color3.fromRGB(0, 0, 0)
	UI_GUI_Bulider["ButtonSimply"].Visible = false
	UI_GUI_Bulider["ButtonSimply"].BackgroundTransparency = 0

	UI_GUI_Bulider["MainFrame"].Parent = UI_GUI_Bulider["MainGui"]
	UI_GUI_Bulider["MainFrame"].Position = PosGui
	UI_GUI_Bulider["MainFrame"].Size = SizeGui
	UI_GUI_Bulider["MainFrame"].BorderSizePixel = 1

	UI_GUI_Bulider["UIShadow"].Parent = UI_GUI_Bulider["MainFrame"]

	UI_GUI_Bulider["UISizeConstraint"].Parent = UI_GUI_Bulider["MainFrame"]
	UI_GUI_Bulider["UISizeConstraint"].MinSize = MinSizeGui



	UI_GUI_Bulider["FrameBar"].Parent = UI_GUI_Bulider["MainFrame"]
	UI_GUI_Bulider["FrameBar"].Size = UDim2.new(1, 0, 0, 40)
	UI_GUI_Bulider["FrameBar"].BorderSizePixel = 1

	UI_GUI_Bulider["UIListLayoutOne"].Parent = UI_GUI_Bulider["FrameBar"]
	UI_GUI_Bulider["UIListLayoutOne"].FillDirection = Enum.FillDirection.Horizontal
	UI_GUI_Bulider["UIListLayoutOne"].HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween



	UI_GUI_Bulider["FrameBarOne"].Parent = UI_GUI_Bulider["FrameBar"]
	UI_GUI_Bulider["FrameBarOne"].Size = UDim2.new(0, 0, 1, 0)
	UI_GUI_Bulider["FrameBarOne"].AutomaticSize = Enum.AutomaticSize.X
	UI_GUI_Bulider["FrameBarOne"].BackgroundTransparency = 1

	UI_GUI_Bulider["UIListLayoutOneOne"].Parent = UI_GUI_Bulider["FrameBarOne"]
	UI_GUI_Bulider["UIListLayoutOneOne"].FillDirection = Enum.FillDirection.Horizontal
	UI_GUI_Bulider["UIListLayoutOneOne"].HorizontalAlignment = Enum.HorizontalAlignment.Left

	UI_GUI_Bulider["ImageLabelGame"].Parent = UI_GUI_Bulider["FrameBarOne"]
	UI_GUI_Bulider["ImageLabelGame"].Size = UDim2.new(1, 0, 1, 0)
	UI_GUI_Bulider["ImageLabelGame"].SizeConstraint = Enum.SizeConstraint.RelativeYY
	UI_GUI_Bulider["ImageLabelGame"].LayoutOrder = 1
	UI_GUI_Bulider["ImageLabelGame"].Image = "rbxassetid://77754544522243"
	UI_GUI_Bulider["ImageLabelGame"].ImageColor3 = Color3.fromRGB(0, 0, 0)

	UI_GUI_Bulider["TextLabelGame"].Parent = UI_GUI_Bulider["FrameBarOne"]
	UI_GUI_Bulider["TextLabelGame"].Size = UDim2.new(0, 0, 1, 0)
	UI_GUI_Bulider["TextLabelGame"].AutomaticSize = Enum.AutomaticSize.X
	UI_GUI_Bulider["TextLabelGame"].Text = [[SimplyUI]] --[[SimplyHub]]
	UI_GUI_Bulider["TextLabelGame"].Font = Enum.Font.SourceSansBold
	UI_GUI_Bulider["TextLabelGame"].TextXAlignment = Enum.TextXAlignment.Left
	UI_GUI_Bulider["TextLabelGame"].TextSize = 18
	UI_GUI_Bulider["TextLabelGame"].LayoutOrder = 2




	UI_GUI_Bulider["FrameBarTwo"].Parent = UI_GUI_Bulider["FrameBar"]
	UI_GUI_Bulider["FrameBarTwo"].Size = UDim2.new(0, 0, 1, 0)
	UI_GUI_Bulider["FrameBarTwo"].AutomaticSize = Enum.AutomaticSize.X
	UI_GUI_Bulider["FrameBarTwo"].BackgroundTransparency = 1
	
	UI_GUI_Bulider["UIListLayoutOneTwo"].Parent = UI_GUI_Bulider["FrameBarTwo"]
	UI_GUI_Bulider["UIListLayoutOneTwo"].FillDirection = Enum.FillDirection.Horizontal
	UI_GUI_Bulider["UIListLayoutOneTwo"].HorizontalAlignment = Enum.HorizontalAlignment.Right

	if BarButton[1] == true then
		UI_GUI_Bulider["ImageButtonClose"].Parent = UI_GUI_Bulider["FrameBarTwo"]
		UI_GUI_Bulider["ImageButtonClose"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_Bulider["ImageButtonClose"].SizeConstraint = Enum.SizeConstraint.RelativeYY
		UI_GUI_Bulider["ImageButtonClose"].LayoutOrder = 3
		UI_GUI_Bulider["ImageButtonClose"].Image = "rbxassetid://79193956246760"
		UI_GUI_Bulider["ImageButtonClose"].ImageColor3 = Color3.fromRGB(0, 0, 0)
		UI_GUI_Bulider["ImageButtonClose"].Activated:Connect(function()
			UI_GUI_Bulider["MainGui"]:Destroy()
			script:Destroy()
		end)
	end
	if BarButton[2] == true then
		UI_GUI_Bulider["ImageButtonMaxMinSize"].Parent = UI_GUI_Bulider["FrameBarTwo"]
		UI_GUI_Bulider["ImageButtonMaxMinSize"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_Bulider["ImageButtonMaxMinSize"].SizeConstraint = Enum.SizeConstraint.RelativeYY
		UI_GUI_Bulider["ImageButtonMaxMinSize"].LayoutOrder = 2
		UI_GUI_Bulider["ImageButtonMaxMinSize"].Image = "rbxassetid://77217748712428"
		UI_GUI_Bulider["ImageButtonMaxMinSize"].ImageColor3 = Color3.fromRGB(0, 0, 0)
		local SaveAll = {
			Size = nil,
			Position = nil
		}
		UI_GUI_Bulider["ImageButtonMaxMinSize"].Activated:Connect(function()
			if UI_GUI_Bulider["MainFrame"].Size ~= UDim2.new(1, 0, 1, 0) then
				SaveAll["Size"] = UI_GUI_Bulider["MainFrame"].Size
				SaveAll["Position"] = UI_GUI_Bulider["MainFrame"].Position
				UI_GUI_Bulider["MainFrame"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Bulider["MainFrame"].Position = UDim2.new(0, 0, 0, 0)
				UI_GUI_Bulider["ImageButtonMaxMinSize"].Image = "rbxassetid://137089839848915"
			else
				UI_GUI_Bulider["MainFrame"].Size = SaveAll["Size"]
				UI_GUI_Bulider["MainFrame"].Position = SaveAll["Position"]
				UI_GUI_Bulider["ImageButtonMaxMinSize"].Image = "rbxassetid://77217748712428"
			end
		end)
	end
	if BarButton[3] == true then
		UI_GUI_Bulider["ImageButtonMiniSize"].Parent = UI_GUI_Bulider["FrameBarTwo"]
		UI_GUI_Bulider["ImageButtonMiniSize"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_Bulider["ImageButtonMiniSize"].SizeConstraint = Enum.SizeConstraint.RelativeYY
		UI_GUI_Bulider["ImageButtonMiniSize"].LayoutOrder = 1
		UI_GUI_Bulider["ImageButtonMiniSize"].Image = "rbxassetid://119618391049200"
		UI_GUI_Bulider["ImageButtonMiniSize"].ImageColor3 = Color3.fromRGB(0, 0, 0)
		UI_GUI_Bulider["ImageButtonMiniSize"].Activated:Connect(function()
			UI_GUI_Bulider["MainFrame"].Visible = false
			UI_GUI_Bulider["ButtonSimply"].Visible = true
		end)
	end


	UI_GUI_Bulider["FrameBox"].Parent = UI_GUI_Bulider["MainFrame"]
	UI_GUI_Bulider["FrameBox"].Size = UDim2.new(1, 0, 1, -40)
	UI_GUI_Bulider["FrameBox"].Position = UDim2.new(0, 0, 0, 40)

	UI_GUI_Bulider["FrameMenuScroll"].Parent = UI_GUI_Bulider["FrameBox"]
	UI_GUI_Bulider["FrameMenuScroll"].Size = UDim2.new(0, 130, 1, 0)
	UI_GUI_Bulider["FrameMenuScroll"].BorderSizePixel = 1

	UI_GUI_Bulider["ScrollingFrameMenu"].Parent = UI_GUI_Bulider["FrameMenuScroll"]
	UI_GUI_Bulider["ScrollingFrameMenu"].Size = UDim2.new(1, 0, 1, 0)
	UI_GUI_Bulider["ScrollingFrameMenu"].BorderSizePixel = 1

	UI_GUI_Bulider["UIListLayoutTwo"].Parent = UI_GUI_Bulider["ScrollingFrameMenu"]

	UI_GUI_Bulider["FrameBoxScroll"].Parent = UI_GUI_Bulider["FrameBox"]
	UI_GUI_Bulider["FrameBoxScroll"].Size = UDim2.new(1, -130, 1, 0)
	--UI_GUI_Bulider["FrameBoxScroll"].Transparency = 1
	UI_GUI_Bulider["FrameBoxScroll"].Position = UDim2.new(0, 130, 0, 0)
	UI_GUI_Bulider["FrameBoxScroll"].BorderSizePixel = 1


	UI_GUI_Bulider["SizeFrame"].Parent = UI_GUI_Bulider["MainFrame"]
	UI_GUI_Bulider["SizeFrame"].AnchorPoint = Vector2.new(1, 1)
	UI_GUI_Bulider["SizeFrame"].Position = UDim2.new(1, 0, 1, 0)
	UI_GUI_Bulider["SizeFrame"].Size = UDim2.new(0, 10, 0, 10)
	UI_GUI_Bulider["SizeFrame"].Transparency = 1


	local UIS = game:GetService('UserInputService')
	local frame = UI_GUI_Bulider["FrameBar"]
	local GUI = UI_GUI_Bulider["MainFrame"]
	local Button = UI_GUI_Bulider["ButtonSimply"]
	local Size = UI_GUI_Bulider["SizeFrame"]
	local dragSpeed = 0.001

	if SettingsGui[1] == true then
		local dragToggle = nil
		local dragToggle2 = nil
		local dragStart = nil
		local startPos = nil

		local function updateInput(input, bool)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			if bool then
				game:GetService('TweenService'):Create(Button, TweenInfo.new(dragSpeed), {Position = position}):Play()
			else
				game:GetService('TweenService'):Create(GUI, TweenInfo.new(dragSpeed), {Position = position}):Play()
			end
		end



		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = GUI.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		Button.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle2 = true
				dragStart = input.Position
				startPos = Button.Position
				task.delay(0.1, function()
					if not dragToggle2 then
						UI_GUI_Bulider["MainFrame"].Visible = true
						UI_GUI_Bulider["ButtonSimply"].Visible = false
					end
				end)
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle2 = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input, false)
				end
				if dragToggle2 then
					updateInput(input, true)
				end
			end
		end)
	end

	if SettingsGui[2] == true then
		local dragToggleTwo = nil
		local dragStartTwo = nil
		local startPosTwo = nil
		local startPos1 = nil

		local function updateInputTwo(input)
			local delta = input.Position - dragStartTwo
			local position = UDim2.new(startPosTwo.X.Scale, startPosTwo.X.Offset + delta.X,
				startPosTwo.Y.Scale, startPosTwo.Y.Offset + delta.Y)
			--local position1 = UDim2.new(startPos1.X.Scale, startPos1.X.Offset + delta.X,
			--startPos1.Y.Scale, startPos1.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(GUI, TweenInfo.new(dragSpeed), {Size = position}):Play()
		end



		Size.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				local Save_POS1 = UDim2.new(0, GUI.AbsolutePosition.X, 0, GUI.AbsolutePosition.Y)
				GUI.Position = Save_POS1
				dragToggleTwo = true
				dragStartTwo = input.Position
				startPosTwo = GUI.Size
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggleTwo = false
					end
				end)
			end
		end)



		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggleTwo then
					updateInputTwo(input)
				end
			end
		end)
	end
	
	local LabelSimply = {}
	
	function LabelSimply:CreateColorSystem()

		local UI_GUI_ColorSystem = {

			--all

			ColorFrame = UI_Table["Frame"]:Clone(),
			--ButtonColorRGB = UI_Table["TextButton"]:Clone(),
			--ButtonColorSelect = UI_Table["TextButton"]:Clone(),

			UIListLayoutColor = UI_Table["UIListLayout"]:Clone(),

			FrameBoxColor = UI_Table["Frame"]:Clone(),
			FrameBoxColorRGB = UI_Table["Frame"]:Clone(),

			FrameColorInputBox = UI_Table["Frame"]:Clone(),
			UIListLayoutInputColor = UI_Table["UIListLayout"]:Clone(),

			FrameColor = UI_Table["Frame"]:Clone(),
			FrameColorClone = UI_Table["Frame"]:Clone(),
			UIGradientColor = UI_Table["UIGradient"]:Clone(),
			FrameDragOne = UI_Table["Frame"]:Clone(),
			UIDragOne = UI_Table["UIDragger"]:Clone(),

			FrameColorBlack = UI_Table["Frame"]:Clone(),
			FrameColorBlackClone = UI_Table["Frame"]:Clone(),
			UIGradientColorBlack = UI_Table["UIGradient"]:Clone(),
			FrameDragTwo = UI_Table["Frame"]:Clone(),
			UIDragTwo = UI_Table["UIDragger"]:Clone(),

			FrameColorWhite = UI_Table["Frame"]:Clone(),
			FrameColorWhiteClone = UI_Table["Frame"]:Clone(),
			UIGradientColorWhite = UI_Table["UIGradient"]:Clone(),
			FrameDragThree = UI_Table["Frame"]:Clone(),
			UIDragThree = UI_Table["UIDragger"]:Clone(),

			InputRed = UI_Table["TextBox"]:Clone(),
			InputGreen = UI_Table["TextBox"]:Clone(),
			InputBlue = UI_Table["TextBox"]:Clone(),

			InputHEX = UI_Table["TextBox"]:Clone(),

			FrameColorButtonBox = UI_Table["Frame"]:Clone(),
			ButtonColorOK = UI_Table["TextButton"]:Clone(),
			ButtonColorCancel = UI_Table["TextButton"]:Clone(),
		}

		UI_GUI_ColorSystem["ColorFrame"].Parent = UI_GUI_Bulider["MainGui"]
		UI_GUI_ColorSystem["ColorFrame"].Name = "Color"
		UI_GUI_ColorSystem["ColorFrame"].Size = UDim2.new(0, 120, 0, 180)
		UI_GUI_ColorSystem["ColorFrame"].Position = UDim2.new(0.5, 0, 0.5, 0)
		UI_GUI_ColorSystem["ColorFrame"].AnchorPoint = Vector2.new(0.5, 0.5)
		UI_GUI_ColorSystem["ColorFrame"].BorderSizePixel = 1
		UI_GUI_ColorSystem["ColorFrame"].Visible = false

		UI_GUI_ColorSystem["FrameBoxColor"].Parent = UI_GUI_ColorSystem["ColorFrame"]
		UI_GUI_ColorSystem["FrameBoxColor"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_ColorSystem["FrameBoxColor"].BackgroundTransparency = 1

		UI_GUI_ColorSystem["UIListLayoutColor"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]


		UI_GUI_ColorSystem["FrameBoxColorRGB"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]
		UI_GUI_ColorSystem["FrameBoxColorRGB"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_ColorSystem["FrameBoxColorRGB"].SizeConstraint = Enum.SizeConstraint.RelativeXX

		UI_GUI_ColorSystem["FrameColor"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]
		UI_GUI_ColorSystem["FrameColor"].Size = UDim2.new(1, 0, 0, 20)
		UI_GUI_ColorSystem["FrameColor"].BorderSizePixel = 1
		UI_GUI_ColorSystem["FrameColor"].ClipsDescendants = true

		UI_GUI_ColorSystem["UIGradientColor"].Parent = UI_GUI_ColorSystem["FrameColor"]
		UI_GUI_ColorSystem["UIGradientColor"].Color = ColorSequence.new(
			{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
				ColorSequenceKeypoint.new(0.16, Color3.fromRGB(255, 255, 0)),
				ColorSequenceKeypoint.new(0.32, Color3.fromRGB(0, 255, 0)),
				ColorSequenceKeypoint.new(0.48, Color3.fromRGB(0, 255, 255)),
				ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 0, 255)),
				ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 0, 255)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4)),
			}
		)

		UI_GUI_ColorSystem["FrameColorClone"].Parent = UI_GUI_ColorSystem["FrameColor"]
		UI_GUI_ColorSystem["FrameColorClone"].Size = UDim2.new(1, -20, 1, 0)
		UI_GUI_ColorSystem["FrameColorClone"].AnchorPoint = Vector2.new(0.5, 0)
		UI_GUI_ColorSystem["FrameColorClone"].Position = UDim2.new(0.5, 0, 0, 0)
		UI_GUI_ColorSystem["FrameColorClone"].BackgroundTransparency = 1

		UI_GUI_ColorSystem["FrameDragOne"].Parent = UI_GUI_ColorSystem["FrameColorClone"]
		UI_GUI_ColorSystem["FrameDragOne"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_ColorSystem["FrameDragOne"].AnchorPoint = Vector2.new(0.5, 0)
		UI_GUI_ColorSystem["FrameDragOne"].SizeConstraint = Enum.SizeConstraint.RelativeYY
		UI_GUI_ColorSystem["FrameDragOne"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)

		UI_GUI_ColorSystem["UIDragOne"].Parent = UI_GUI_ColorSystem["FrameDragOne"]
		UI_GUI_ColorSystem["UIDragOne"].BoundingUI = UI_GUI_ColorSystem["FrameColor"]
		UI_GUI_ColorSystem["UIDragOne"].DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine
		UI_GUI_ColorSystem["UIDragOne"].ResponseStyle = Enum.UIDragDetectorResponseStyle.Scale
		UI_GUI_ColorSystem["UIDragOne"].BoundingBehavior = Enum.UIDragDetectorBoundingBehavior.EntireObject

		UI_GUI_ColorSystem["FrameColorBlack"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]
		UI_GUI_ColorSystem["FrameColorBlack"].Size = UDim2.new(1, 0, 0, 20)
		UI_GUI_ColorSystem["FrameColorBlack"].BorderSizePixel = 1
		UI_GUI_ColorSystem["FrameColorBlack"].ClipsDescendants = true

		UI_GUI_ColorSystem["UIGradientColorBlack"].Parent = UI_GUI_ColorSystem["FrameColorBlack"]
		UI_GUI_ColorSystem["UIGradientColorBlack"].Color = ColorSequence.new(
			Color3.fromRGB(0, 0, 0),
			Color3.fromRGB(0, 0, 0)
		)

		UI_GUI_ColorSystem["FrameColorBlackClone"].Parent = UI_GUI_ColorSystem["FrameColorBlack"]
		UI_GUI_ColorSystem["FrameColorBlackClone"].Size = UDim2.new(1, -20, 1, 0)
		UI_GUI_ColorSystem["FrameColorBlackClone"].AnchorPoint = Vector2.new(0.5, 0)
		UI_GUI_ColorSystem["FrameColorBlackClone"].Position = UDim2.new(0.5, 0, 0, 0)
		UI_GUI_ColorSystem["FrameColorBlackClone"].BackgroundTransparency = 1

		UI_GUI_ColorSystem["FrameDragTwo"].Parent = UI_GUI_ColorSystem["FrameColorBlackClone"]
		UI_GUI_ColorSystem["FrameDragTwo"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_ColorSystem["FrameDragTwo"].SizeConstraint = Enum.SizeConstraint.RelativeYY
		UI_GUI_ColorSystem["FrameDragTwo"].Position = UDim2.new(1, 0, 0, 0)
		UI_GUI_ColorSystem["FrameDragTwo"].AnchorPoint = Vector2.new(0.5, 0)
		UI_GUI_ColorSystem["FrameDragTwo"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)

		UI_GUI_ColorSystem["UIDragTwo"].Parent = UI_GUI_ColorSystem["FrameDragTwo"]
		UI_GUI_ColorSystem["UIDragTwo"].BoundingUI = UI_GUI_ColorSystem["FrameColorBlack"]
		UI_GUI_ColorSystem["UIDragTwo"].DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine
		UI_GUI_ColorSystem["UIDragTwo"].ResponseStyle = Enum.UIDragDetectorResponseStyle.Scale
		UI_GUI_ColorSystem["UIDragTwo"].BoundingBehavior = Enum.UIDragDetectorBoundingBehavior.EntireObject

		UI_GUI_ColorSystem["FrameColorWhite"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]
		UI_GUI_ColorSystem["FrameColorWhite"].Size = UDim2.new(1, 0, 0, 20)
		UI_GUI_ColorSystem["FrameColorWhite"].BorderSizePixel = 1
		UI_GUI_ColorSystem["FrameColorWhite"].ClipsDescendants = true

		UI_GUI_ColorSystem["UIGradientColorWhite"].Parent = UI_GUI_ColorSystem["FrameColorWhite"]
		UI_GUI_ColorSystem["UIGradientColorWhite"].Color = ColorSequence.new(
			Color3.fromRGB(255, 255, 255),
			Color3.fromRGB(255, 255, 255)
		)

		UI_GUI_ColorSystem["FrameColorWhiteClone"].Parent = UI_GUI_ColorSystem["FrameColorWhite"]
		UI_GUI_ColorSystem["FrameColorWhiteClone"].Size = UDim2.new(1, -20, 1, 0)
		UI_GUI_ColorSystem["FrameColorWhiteClone"].AnchorPoint = Vector2.new(0.5, 0)
		UI_GUI_ColorSystem["FrameColorWhiteClone"].Position = UDim2.new(0.5, 0, 0, 0)
		UI_GUI_ColorSystem["FrameColorWhiteClone"].BackgroundTransparency = 1

		UI_GUI_ColorSystem["FrameDragThree"].Parent = UI_GUI_ColorSystem["FrameColorWhiteClone"]
		UI_GUI_ColorSystem["FrameDragThree"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_ColorSystem["FrameDragThree"].Position = UDim2.new(1, 0, 0, 0)
		UI_GUI_ColorSystem["FrameDragThree"].AnchorPoint = Vector2.new(0.5, 0)
		UI_GUI_ColorSystem["FrameDragThree"].SizeConstraint = Enum.SizeConstraint.RelativeYY
		UI_GUI_ColorSystem["FrameDragThree"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)

		UI_GUI_ColorSystem["UIDragThree"].Parent = UI_GUI_ColorSystem["FrameDragThree"]
		UI_GUI_ColorSystem["UIDragThree"].BoundingUI = UI_GUI_ColorSystem["FrameColorWhite"]
		UI_GUI_ColorSystem["UIDragThree"].DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine
		UI_GUI_ColorSystem["UIDragThree"].ResponseStyle = Enum.UIDragDetectorResponseStyle.Scale
		UI_GUI_ColorSystem["UIDragThree"].BoundingBehavior = Enum.UIDragDetectorBoundingBehavior.EntireObject

		UI_GUI_ColorSystem["FrameColorInputBox"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]
		UI_GUI_ColorSystem["FrameColorInputBox"].Size = UDim2.new(1, 0, 0, 20)
		UI_GUI_ColorSystem["FrameColorInputBox"].BackgroundTransparency = 1
		UI_GUI_ColorSystem["FrameColorInputBox"].Position = UDim2.new(0, 0, 0, 100)

		UI_GUI_ColorSystem["UIListLayoutInputColor"].Parent = UI_GUI_ColorSystem["FrameColorInputBox"]
		UI_GUI_ColorSystem["UIListLayoutInputColor"].FillDirection = Enum.FillDirection.Horizontal

		UI_GUI_ColorSystem["InputRed"].Parent = UI_GUI_ColorSystem["FrameColorInputBox"]
		UI_GUI_ColorSystem["InputRed"].BorderSizePixel = 1
		UI_GUI_ColorSystem["InputRed"].BackgroundColor3 = Color3.fromRGB(150, 150, 150)
		UI_GUI_ColorSystem["InputRed"].PlaceholderColor3 = Color3.fromRGB(81, 81, 81)
		UI_GUI_ColorSystem["InputRed"].Text = "255"
		UI_GUI_ColorSystem["InputRed"].PlaceholderText = "Red"
		UI_GUI_ColorSystem["InputRed"].TextColor3 = Color3.fromRGB(170, 0, 0)
		UI_GUI_ColorSystem["InputRed"].TextSize = 16
		UI_GUI_ColorSystem["InputRed"].Font = Enum.Font.SourceSansBold
		UI_GUI_ColorSystem["InputRed"].Size = UDim2.new(0.334, 0, 1, 0)

		UI_GUI_ColorSystem["InputGreen"].Parent = UI_GUI_ColorSystem["FrameColorInputBox"]
		UI_GUI_ColorSystem["InputGreen"].BorderSizePixel = 1
		UI_GUI_ColorSystem["InputGreen"].BackgroundColor3 = Color3.fromRGB(150, 150, 150)
		UI_GUI_ColorSystem["InputGreen"].PlaceholderColor3 = Color3.fromRGB(81, 81, 81)
		UI_GUI_ColorSystem["InputGreen"].Text = "255"
		UI_GUI_ColorSystem["InputGreen"].PlaceholderText = "Green"
		UI_GUI_ColorSystem["InputGreen"].TextColor3 = Color3.fromRGB(0, 255, 0)
		UI_GUI_ColorSystem["InputGreen"].TextSize = 16
		UI_GUI_ColorSystem["InputGreen"].Font = Enum.Font.SourceSansBold
		UI_GUI_ColorSystem["InputGreen"].Size = UDim2.new(0.334, 0, 1, 0)

		UI_GUI_ColorSystem["InputBlue"].Parent = UI_GUI_ColorSystem["FrameColorInputBox"]
		UI_GUI_ColorSystem["InputBlue"].BorderSizePixel = 1
		UI_GUI_ColorSystem["InputBlue"].BackgroundColor3 = Color3.fromRGB(150, 150, 150)
		UI_GUI_ColorSystem["InputBlue"].PlaceholderColor3 = Color3.fromRGB(81, 81, 81)
		UI_GUI_ColorSystem["InputBlue"].Text = "255"
		UI_GUI_ColorSystem["InputBlue"].PlaceholderText = "Blue"
		UI_GUI_ColorSystem["InputBlue"].TextColor3 = Color3.fromRGB(0, 0, 170)
		UI_GUI_ColorSystem["InputBlue"].TextSize = 16
		UI_GUI_ColorSystem["InputBlue"].Font = Enum.Font.SourceSansBold
		UI_GUI_ColorSystem["InputBlue"].Size = UDim2.new(0.334, 0, 1, 0)

		UI_GUI_ColorSystem["InputHEX"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]
		UI_GUI_ColorSystem["InputHEX"].BorderSizePixel = 1
		UI_GUI_ColorSystem["InputHEX"].BackgroundColor3 = Color3.fromRGB(150, 150, 150)
		UI_GUI_ColorSystem["InputHEX"].PlaceholderColor3 = Color3.fromRGB(81, 81, 81)
		UI_GUI_ColorSystem["InputHEX"].Text = "ffffff"
		UI_GUI_ColorSystem["InputHEX"].PlaceholderText = "HEX"
		UI_GUI_ColorSystem["InputHEX"].TextColor3 = Color3.fromRGB(255, 255, 255)
		UI_GUI_ColorSystem["InputHEX"].TextSize = 16
		UI_GUI_ColorSystem["InputHEX"].Font = Enum.Font.SourceSansBold
		UI_GUI_ColorSystem["InputHEX"].Size = UDim2.new(1, 0, 0, 20)
		UI_GUI_ColorSystem["InputHEX"].Position = UDim2.new(0, 0, 140, 0)

		UI_GUI_ColorSystem["FrameColorButtonBox"].Parent = UI_GUI_ColorSystem["FrameBoxColor"]
		UI_GUI_ColorSystem["FrameColorButtonBox"].Size = UDim2.new(1, 0, 0, 20)
		UI_GUI_ColorSystem["FrameColorButtonBox"].Position = UDim2.new(0, 0, 160, 0)
		UI_GUI_ColorSystem["FrameColorButtonBox"].BackgroundTransparency = 1

		UI_GUI_ColorSystem["ButtonColorOK"].Parent = UI_GUI_ColorSystem["FrameColorButtonBox"]
		UI_GUI_ColorSystem["ButtonColorOK"].BorderSizePixel = 1
		UI_GUI_ColorSystem["ButtonColorOK"].Size = UDim2.new(0.5, 0, 1, 0)
		UI_GUI_ColorSystem["ButtonColorOK"].BackgroundColor3 = Color3.fromRGB(0, 170, 0)
		UI_GUI_ColorSystem["ButtonColorOK"].TextColor3 = Color3.fromRGB(255, 255, 255)
		UI_GUI_ColorSystem["ButtonColorOK"].Text = "OK"

		UI_GUI_ColorSystem["ButtonColorCancel"].Parent = UI_GUI_ColorSystem["FrameColorButtonBox"]
		UI_GUI_ColorSystem["ButtonColorCancel"].AnchorPoint = Vector2.new(1, 0)
		UI_GUI_ColorSystem["ButtonColorCancel"].Position = UDim2.new(1, 0, 0, 0)
		UI_GUI_ColorSystem["ButtonColorCancel"].Size = UDim2.new(0.5, 0, 1, 0)
		UI_GUI_ColorSystem["ButtonColorCancel"].BorderSizePixel = 1
		UI_GUI_ColorSystem["ButtonColorCancel"].BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		UI_GUI_ColorSystem["ButtonColorCancel"].TextColor3 = Color3.fromRGB(255, 255, 255)
		UI_GUI_ColorSystem["ButtonColorCancel"].Text = "Cancel"

		local function ColorRGB()
			local input = Color3.fromRGB(tonumber(UI_GUI_ColorSystem["InputRed"].Text), tonumber(UI_GUI_ColorSystem["InputGreen"].Text), tonumber(UI_GUI_ColorSystem["InputBlue"].Text)) 
			UI_GUI_ColorSystem["FrameBoxColorRGB"].BackgroundColor3 = input
			UI_GUI_ColorSystem["InputHEX"].Text = input:ToHex()
		end

		local function ColorHEX()
			local input = Color3.fromHex(UI_GUI_ColorSystem["InputHEX"].Text) 
			UI_GUI_ColorSystem["FrameBoxColorRGB"].BackgroundColor3 = input
			UI_GUI_ColorSystem["InputRed"].Text = math.floor(input.R * 255)
			UI_GUI_ColorSystem["InputGreen"].Text = math.floor(input.G * 255)
			UI_GUI_ColorSystem["InputBlue"].Text = math.floor(input.B * 255)
		end

		local function UpdateDrag()
			--UI_GUI_ColorSystem["FrameDragOne"].AnchorPoint = Vector2.new(UI_GUI_ColorSystem["FrameDragOne"].Position.X.Scale, 0)
			--UI_GUI_ColorSystem["FrameDragTwo"].AnchorPoint = Vector2.new(UI_GUI_ColorSystem["FrameDragTwo"].Position.X.Scale, 0)
			--UI_GUI_ColorSystem["FrameDragThree"].AnchorPoint = Vector2.new(UI_GUI_ColorSystem["FrameDragThree"].Position.X.Scale, 0)
			UI_GUI_ColorSystem["FrameBoxColorRGB"].BackgroundColor3 = Color3.fromHSV(UI_GUI_ColorSystem["FrameDragOne"].Position.X.Scale, UI_GUI_ColorSystem["FrameDragThree"].Position.X.Scale, UI_GUI_ColorSystem["FrameDragTwo"].Position.X.Scale)
			UI_GUI_ColorSystem["UIGradientColorWhite"].Color = ColorSequence.new(
				Color3.fromRGB(255, 255, 255),
				Color3.fromHSV(UI_GUI_ColorSystem["FrameDragOne"].Position.X.Scale, 1, 1)
			)
			UI_GUI_ColorSystem["UIGradientColorBlack"].Color = ColorSequence.new(
				Color3.fromRGB(0, 0, 0),
				Color3.fromHSV(UI_GUI_ColorSystem["FrameDragOne"].Position.X.Scale, 1, 1)
			)
		end

		local function UpdateColor()
			local input = UI_GUI_ColorSystem["FrameBoxColorRGB"].BackgroundColor3
			UI_GUI_ColorSystem["InputRed"].Text = math.floor(input.R * 255)
			UI_GUI_ColorSystem["InputGreen"].Text = math.floor(input.G * 255)
			UI_GUI_ColorSystem["InputBlue"].Text = math.floor(input.B * 255)
			UI_GUI_ColorSystem["InputHEX"].Text = input:ToHex()
			local H, S, V = input:ToHSV()
			UI_GUI_ColorSystem["FrameDragOne"].Position = UDim2.new(H, 0, 0, 0)
			UI_GUI_ColorSystem["FrameDragTwo"].Position = UDim2.new(V, 0, 0, 0)
			UI_GUI_ColorSystem["FrameDragThree"].Position = UDim2.new(S, 0, 0, 0)
		end

		UI_GUI_ColorSystem["InputRed"].FocusLost:Connect(ColorRGB)
		UI_GUI_ColorSystem["InputGreen"].FocusLost:Connect(ColorRGB)
		UI_GUI_ColorSystem["InputBlue"].FocusLost:Connect(ColorRGB)
		UI_GUI_ColorSystem["InputHEX"].FocusLost:Connect(ColorHEX)

		UI_GUI_ColorSystem["FrameBoxColorRGB"].Changed:Connect(UpdateColor)

		UI_GUI_ColorSystem["FrameDragOne"].Changed:Connect(UpdateDrag)
		UI_GUI_ColorSystem["FrameDragTwo"].Changed:Connect(UpdateDrag)
		UI_GUI_ColorSystem["FrameDragThree"].Changed:Connect(UpdateDrag)

		local UIS = game:GetService('UserInputService')
		local frame = UI_GUI_ColorSystem["FrameBoxColorRGB"]
		local GUI = UI_GUI_ColorSystem["ColorFrame"]
		local dragSpeed = 0.001

		local dragToggle = nil
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(GUI, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end



		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = GUI.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)


		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)

		return {
			UI_GUI_ColorSystem["ColorFrame"],
			UI_GUI_ColorSystem["FrameBoxColorRGB"],
			UI_GUI_ColorSystem["ButtonColorOK"],
			UI_GUI_ColorSystem["ButtonColorCancel"]
		}
	end

	function LabelSimply:CreateTabSystem()
		local UI_GUI_TabSystem = {
			TabFrame = UI_Table["Frame"]:Clone(),
			ScrollingFrameTab = UI_Table["ScrollingFrame"]:Clone(),
			UIListLayoutTab = UI_Table["UIListLayout"]:Clone(),
			ButtonTab = UI_Table["TextButton"]:Clone(),
			TextButton = UI_Table["TextLabel"]:Clone(),
			SizeConstraint = UI_Table["UISizeConstraint"]:Clone(),
		}
		UI_GUI_TabSystem["TabFrame"].Parent = UI_GUI_Bulider["MainGui"]
		UI_GUI_TabSystem["TabFrame"].Name = "Tab"
		UI_GUI_TabSystem["TabFrame"].BackgroundColor3 = Color3.fromRGB(255, 179, 0)
		UI_GUI_TabSystem["TabFrame"].AutomaticSize =  Enum.AutomaticSize.Y
		UI_GUI_TabSystem["TabFrame"].BorderSizePixel = 1
		UI_GUI_TabSystem["TabFrame"].Visible = false

		UI_GUI_TabSystem["SizeConstraint"].Parent = UI_GUI_TabSystem["TabFrame"]
		UI_GUI_TabSystem["SizeConstraint"].MaxSize = Vector2.new(1000000, 320)
		UI_GUI_TabSystem["SizeConstraint"].MinSize = Vector2.new(0, 20)

		UI_GUI_TabSystem["ScrollingFrameTab"].Parent = UI_GUI_TabSystem["TabFrame"]
		UI_GUI_TabSystem["ScrollingFrameTab"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_TabSystem["ScrollingFrameTab"].BackgroundTransparency = 1
		UI_GUI_TabSystem["ScrollingFrameTab"].AutomaticSize = Enum.AutomaticSize.Y
		UI_GUI_TabSystem["ScrollingFrameTab"].ScrollBarThickness = 0

		UI_GUI_TabSystem["UIListLayoutTab"].Parent = UI_GUI_TabSystem["ScrollingFrameTab"]

		UI_GUI_TabSystem["ButtonTab"].BackgroundTransparency = 1
		UI_GUI_TabSystem["ButtonTab"].Text = ""
		UI_GUI_TabSystem["ButtonTab"].TextTransparency = 1
		UI_GUI_TabSystem["ButtonTab"].Size = UDim2.new(1, 0, 0, 20)
		--UI_GUI_TabSystem["ButtonTab"].AutomaticSize = Enum.AutomaticSize.X

		UI_GUI_TabSystem["TextButton"].Parent = UI_GUI_TabSystem["ButtonTab"]
		UI_GUI_TabSystem["TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
		UI_GUI_TabSystem["TextButton"].BackgroundTransparency = 1
		UI_GUI_TabSystem["TextButton"].Text = ""
		UI_GUI_TabSystem["TextButton"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_TabSystem["TextButton"].AutomaticSize = Enum.AutomaticSize.X

		return {
			UI_GUI_TabSystem["TabFrame"],
			UI_GUI_TabSystem["ScrollingFrameTab"],
			UI_GUI_TabSystem["ButtonTab"],
			UI_GUI_TabSystem["TextButton"]
		}
	end
	
	function LabelSimply:Menu(Image, Text, MainBool)
		
		local UI_GUI_MenuBox = {
			ScrollingFrameBox = UI_Table["ScrollingFrame"]:Clone(),
			UIListLayoutThree = UI_Table["UIListLayout"]:Clone(),
			UIPadding = UI_Table["UIPadding"]:Clone()
		}

		UI_GUI_MenuBox["ScrollingFrameBox"].Parent = UI_GUI_Bulider["FrameBoxScroll"]
		UI_GUI_MenuBox["ScrollingFrameBox"].Size = UDim2.new(1, 0, 1, 0)
		UI_GUI_MenuBox["ScrollingFrameBox"].BorderSizePixel = 1
		--UI_GUI_MenuBox["ScrollingFrameBox"].Visible = Visible	

		UI_GUI_MenuBox["UIListLayoutThree"].Parent = UI_GUI_MenuBox["ScrollingFrameBox"]
		UI_GUI_MenuBox["UIListLayoutThree"].Padding = UDim.new(0, 1)
		UI_GUI_MenuBox["UIListLayoutThree"].HorizontalAlignment = Enum.HorizontalAlignment.Center

		UI_GUI_MenuBox["UIPadding"].Parent = UI_GUI_MenuBox["ScrollingFrameBox"]
		UI_GUI_MenuBox["UIPadding"].PaddingBottom = UDim.new(0, 10)
		UI_GUI_MenuBox["UIPadding"].PaddingLeft = UDim.new(0, 10)
		UI_GUI_MenuBox["UIPadding"].PaddingRight = UDim.new(0, 10)
		
		local LabelSimplyTwo = {}
		
		function LabelSimplyTwo:Box(Text)
			local UI_GUI_Box = {
				Frame = UI_Table["Frame"]:Clone(),
				UIListLayout = UI_Table["UIListLayout"]:Clone(),
				TextLabel = UI_Table["TextLabel"]:Clone(),
			}

			UI_GUI_Box["Frame"].Parent = UI_GUI_MenuBox["ScrollingFrameBox"]
			UI_GUI_Box["Frame"].Size = UDim2.new(1, 0, 0, 0)
			UI_GUI_Box["Frame"].AutomaticSize = Enum.AutomaticSize.Y

			UI_GUI_Box["UIListLayout"].Parent = UI_GUI_Box["Frame"]
			UI_GUI_Box["UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Center

			UI_GUI_Box["TextLabel"].Parent = UI_GUI_Box["Frame"]
			UI_GUI_Box["TextLabel"].LayoutOrder = 0
			UI_GUI_Box["TextLabel"].Text = Text
			UI_GUI_Box["TextLabel"].TextSize = 16
			UI_GUI_Box["TextLabel"].Size = UDim2.new(1, 0, 0, 30)
			UI_GUI_Box["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
			
			local LabelSimplyThree = {}
			

			function LabelSimplyThree:Switch(Text, CallBack)
				
				local UI_GUI_Switch = {
					Frame = UI_Table["Frame"]:Clone(),
					FrameTwo = UI_Table["Frame"]:Clone(),
					TextButton = UI_Table["TextButton"]:Clone(),
					TextLabel = UI_Table["TextLabel"]:Clone(),
					UIPadding = UI_Table["UIPadding"]:Clone(),
					BoolValue = false,
					CallBack = CallBack or function() end
				}
				
				UI_GUI_Switch["Frame"].Parent = UI_GUI_Box["Frame"]
				UI_GUI_Switch["Frame"].Size = UDim2.new(1, 0, 0, 40)
				UI_GUI_Switch["Frame"].BorderSizePixel = 1
				UI_GUI_Switch["Frame"].LayoutOrder = 1

				UI_GUI_Switch["TextLabel"].Parent = UI_GUI_Switch["Frame"]
				UI_GUI_Switch["TextLabel"].LayoutOrder = 0
				UI_GUI_Switch["TextLabel"].Text = Text
				UI_GUI_Switch["TextLabel"].TextSize = 12
				UI_GUI_Switch["TextLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Switch["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_Switch["TextLabel"].AnchorPoint = Vector2.new(0, 0.5)
				UI_GUI_Switch["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)

				UI_GUI_Switch["TextButton"].Parent = UI_GUI_Switch["Frame"]
				UI_GUI_Switch["TextButton"].BorderSizePixel = 1
				UI_GUI_Switch["TextButton"].Text = ""
				UI_GUI_Switch["TextButton"].BackgroundColor3 = Color3.fromRGB(150, 150, 150)
				UI_GUI_Switch["TextButton"].AutoButtonColor = false
				UI_GUI_Switch["TextButton"].Size = UDim2.new(0, 40, 1, -20)
				UI_GUI_Switch["TextButton"].AnchorPoint = Vector2.new(1, 0.5)
				UI_GUI_Switch["TextButton"].Position = UDim2.new(1, 0, 0.5, 0)

				UI_GUI_Switch["FrameTwo"].Parent = UI_GUI_Switch["TextButton"]
				UI_GUI_Switch["FrameTwo"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Switch["FrameTwo"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				UI_GUI_Switch["FrameTwo"].SizeConstraint = Enum.SizeConstraint.RelativeYY

				UI_GUI_Switch["UIPadding"].Parent = UI_GUI_Switch["Frame"]
				UI_GUI_Switch["UIPadding"].PaddingLeft = UDim.new(0, 10)
				UI_GUI_Switch["UIPadding"].PaddingRight = UDim.new(0, 10)

				UI_GUI_Switch["BoolValue"].Parent = UI_GUI_Switch["TextButton"]
				UI_GUI_Switch["BoolValue"].Name = Text
				UI_GUI_Switch["BoolValue"].Value = false

				UI_GUI_Switch["TextButton"].Activated:Connect(function()
					UI_GUI_Switch["BoolValue"] = not UI_GUI_Switch["BoolValue"]
					if UI_GUI_Switch["BoolValue"] then
						UI_GUI_Switch["FrameTwo"].BackgroundColor3 = Color3.fromRGB(0, 255, 0)
						UI_GUI_Switch["FrameTwo"].Position = UDim2.new(0.5, 0, 0, 0)
					else
						UI_GUI_Switch["FrameTwo"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						UI_GUI_Switch["FrameTwo"].Position = UDim2.new(0, 0, 0, 0)
					end
					pcall(UI_GUI_Switch["CallBack"], UI_GUI_Switch["BoolValue"])
				end)
			end
			function LabelSimplyThree:Button(Text, TextButton, ColorButton, CallBack)
				local UI_GUI_Button = {
					Frame = UI_Table["Frame"]:Clone(),
					TextButton = UI_Table["TextButton"]:Clone(),
					TextLabel = UI_Table["TextLabel"]:Clone(),
					UIPadding = UI_Table["UIPadding"]:Clone(),
					UIPaddingText = UI_Table["UIPadding"]:Clone(),
					CallBack = CallBack or function() end
				}

				UI_GUI_Button["Frame"].Parent = UI_GUI_Box["Frame"]
				UI_GUI_Button["Frame"].Size = UDim2.new(1, 0, 0, 40)
				UI_GUI_Button["Frame"].BorderSizePixel = 1
				UI_GUI_Button["Frame"].LayoutOrder = 1

				UI_GUI_Button["TextLabel"].Parent = UI_GUI_Button["Frame"]
				UI_GUI_Button["TextLabel"].LayoutOrder = 0
				UI_GUI_Button["TextLabel"].Text = Text
				UI_GUI_Button["TextLabel"].TextSize = 12
				UI_GUI_Button["TextLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Button["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_Button["TextLabel"].AnchorPoint = Vector2.new(0, 0.5)
				UI_GUI_Button["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)

				UI_GUI_Button["TextButton"].Parent = UI_GUI_Button["Frame"]
				UI_GUI_Button["TextButton"].BorderSizePixel = 1
				UI_GUI_Button["TextButton"].Text = TextButton
				UI_GUI_Button["TextButton"].BackgroundColor3 = ColorButton
				UI_GUI_Button["TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
				UI_GUI_Button["TextButton"].TextSize = 16
				UI_GUI_Button["TextButton"].Font = Enum.Font.SourceSansBold
				UI_GUI_Button["TextButton"].AutomaticSize = Enum.AutomaticSize.X
				UI_GUI_Button["TextButton"].AutoButtonColor = true
				UI_GUI_Button["TextButton"].Size = UDim2.new(0, 0, 1, -20)
				UI_GUI_Button["TextButton"].AnchorPoint = Vector2.new(1, 0.5)
				UI_GUI_Button["TextButton"].Position = UDim2.new(1, 0, 0.5, 0)

				UI_GUI_Button["UIPadding"].Parent = UI_GUI_Button["Frame"]
				UI_GUI_Button["UIPadding"].PaddingLeft = UDim.new(0, 10)
				UI_GUI_Button["UIPadding"].PaddingRight = UDim.new(0, 10)

				UI_GUI_Button["UIPaddingText"].Parent = UI_GUI_Button["TextButton"]
				UI_GUI_Button["UIPaddingText"].PaddingLeft = UDim.new(0, 5)
				UI_GUI_Button["UIPaddingText"].PaddingRight = UDim.new(0, 5)
				
				UI_GUI_Button["TextButton"].Activated:Connect(function()
					pcall(UI_GUI_Button["CallBack"])
				end)
			end
			function LabelSimplyThree:TextBox(Text, PlaceHolderText, TextBox, ModeText, Range, NullText, CallBack)
				local UI_GUI_TextBox = {
					Frame = UI_Table["Frame"]:Clone(),
					TextBox = UI_Table["TextBox"]:Clone(),
					TextLabel = UI_Table["TextLabel"]:Clone(),
					UIPadding = UI_Table["UIPadding"]:Clone(),
					UIPaddingText = UI_Table["UIPadding"]:Clone(),
					StringValue = UI_Table["StringValue"]:Clone(),
					CallBack = CallBack or function() end
				}

				UI_GUI_TextBox["Frame"].Parent = UI_GUI_Box["Frame"]
				UI_GUI_TextBox["Frame"].Size = UDim2.new(1, 0, 0, 40)
				UI_GUI_TextBox["Frame"].BorderSizePixel = 1
				UI_GUI_TextBox["Frame"].LayoutOrder = 1

				UI_GUI_TextBox["TextLabel"].Parent = UI_GUI_TextBox["Frame"]
				UI_GUI_TextBox["TextLabel"].LayoutOrder = 0
				UI_GUI_TextBox["TextLabel"].Text = Text
				UI_GUI_TextBox["TextLabel"].TextSize = 12
				UI_GUI_TextBox["TextLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_TextBox["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_TextBox["TextLabel"].AnchorPoint = Vector2.new(0, 0.5)
				UI_GUI_TextBox["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)

				UI_GUI_TextBox["TextBox"].Parent = UI_GUI_TextBox["Frame"]
				UI_GUI_TextBox["TextBox"].BorderSizePixel = 1
				UI_GUI_TextBox["TextBox"].BackgroundColor3 = Color3.fromRGB(150, 150, 150)
				UI_GUI_TextBox["TextBox"].PlaceholderColor3 = Color3.fromRGB(81, 81, 81)
				UI_GUI_TextBox["TextBox"].Text = TextBox
				UI_GUI_TextBox["TextBox"].PlaceholderText = PlaceHolderText
				UI_GUI_TextBox["TextBox"].TextColor3 = Color3.fromRGB(255, 255, 255)
				UI_GUI_TextBox["TextBox"].TextSize = 16
				UI_GUI_TextBox["TextBox"].Font = Enum.Font.SourceSansBold
				UI_GUI_TextBox["TextBox"].AutomaticSize = Enum.AutomaticSize.X
				UI_GUI_TextBox["TextBox"].Size = UDim2.new(0, 0, 1, -20)
				UI_GUI_TextBox["TextBox"].AnchorPoint = Vector2.new(1, 0.5)
				UI_GUI_TextBox["TextBox"].Position = UDim2.new(1, 0, 0.5, 0)

				UI_GUI_TextBox["UIPadding"].Parent = UI_GUI_TextBox["Frame"]
				UI_GUI_TextBox["UIPadding"].PaddingLeft = UDim.new(0, 10)
				UI_GUI_TextBox["UIPadding"].PaddingRight = UDim.new(0, 10)

				UI_GUI_TextBox["UIPaddingText"].Parent = UI_GUI_TextBox["TextBox"]
				UI_GUI_TextBox["UIPaddingText"].PaddingLeft = UDim.new(0, 5)
				UI_GUI_TextBox["UIPaddingText"].PaddingRight = UDim.new(0, 5)

				UI_GUI_TextBox["TextBox"].FocusLost:Connect(function()

					if ModeText == "int" or ModeText == "float" then
						if not Range then
							UI_GUI_TextBox["StringValue"].Value = UI_GUI_TextBox["TextBox"].Text
						else
							local succes, result = pcall(function()
								if not (tonumber(UI_GUI_TextBox["TextBox"].Text) >= Range[1] and tonumber(UI_GUI_TextBox["TextBox"].Text) <= Range[2]) then
									UI_GUI_TextBox["TextBox"].Text = UI_GUI_TextBox["StringValue"].Value
								elseif UI_GUI_TextBox["TextBox"].Text == "" and NullText == true then
									UI_GUI_TextBox["TextBox"].Text = UI_GUI_TextBox["StringValue"].Value
								else
									UI_GUI_TextBox["StringValue"].Value = UI_GUI_TextBox["TextBox"].Text
								end
							end)
							if not succes then
								UI_GUI_TextBox["TextBox"].Text = UI_GUI_TextBox["StringValue"].Value
							end
						end
					elseif ModeText == "string" then
						UI_GUI_TextBox["StringValue"].Value = UI_GUI_TextBox["TextBox"].Text
					end
					UI_GUI_TextBox["CallBack"](UI_GUI_TextBox["TextBox"].Text)
				end)
			end
			function LabelSimplyThree:Color(Text, StandartColor, UIColor, CallBack)
				local UI_GUI_Color = {
					Frame = UI_Table["Frame"]:Clone(),
					TextButton = UI_Table["TextButton"]:Clone(),
					TextLabel = UI_Table["TextLabel"]:Clone(),
					UIPadding = UI_Table["UIPadding"]:Clone(),
					UIPaddingText = UI_Table["UIPadding"]:Clone(),
					ColorValue = UI_Table["ColorValue"]:Clone(),
					CallBack = CallBack or function() end
				}

				UI_GUI_Color["Frame"].Parent = UI_GUI_Box["Frame"]
				UI_GUI_Color["Frame"].Size = UDim2.new(1, 0, 0, 40)
				UI_GUI_Color["Frame"].BorderSizePixel = 1
				UI_GUI_Color["Frame"].LayoutOrder = 1

				UI_GUI_Color["TextLabel"].Parent = UI_GUI_Color["Frame"]
				UI_GUI_Color["TextLabel"].LayoutOrder = 0
				UI_GUI_Color["TextLabel"].Text = Text
				UI_GUI_Color["TextLabel"].TextSize = 12
				UI_GUI_Color["TextLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Color["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_Color["TextLabel"].AnchorPoint = Vector2.new(0, 0.5)
				UI_GUI_Color["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)

				UI_GUI_Color["TextButton"].Parent = UI_GUI_Color["Frame"]
				UI_GUI_Color["TextButton"].BorderSizePixel = 1
				UI_GUI_Color["TextButton"].Text = ""
				UI_GUI_Color["TextButton"].BackgroundColor3 = StandartColor
				UI_GUI_Color["TextButton"].AutoButtonColor = false
				UI_GUI_Color["TextButton"].Size = UDim2.new(1, -20, 1, -20)
				UI_GUI_Color["TextButton"].SizeConstraint = Enum.SizeConstraint.RelativeYY
				UI_GUI_Color["TextButton"].AnchorPoint = Vector2.new(1, 0.5)
				UI_GUI_Color["TextButton"].Position = UDim2.new(1, 0, 0.5, 0)

				UI_GUI_Color["UIPadding"].Parent = UI_GUI_Color["Frame"]
				UI_GUI_Color["UIPadding"].PaddingLeft = UDim.new(0, 10)
				UI_GUI_Color["UIPadding"].PaddingRight = UDim.new(0, 10)

				UI_GUI_Color["TextButton"].Activated:Connect(function()
					if LabelSimply:CreateColorSystem()[1].Visible == true then
						LabelSimply:CreateColorSystem()[1].Visible = false	
					else
						LabelSimply:CreateColorSystem()[1].Visible = true
						LabelSimply:CreateColorSystem()[2].BackgroundColor3 = UI_GUI_Color["TextButton"].BackgroundColor3
						local Fixs = {
							nil,
							nil
						}
						Fixs[1] = LabelSimply:CreateColorSystem()[3].Activated:Connect(function()
							UI_GUI_Color["TextButton"].BackgroundColor3 = LabelSimply:CreateColorSystem()[2].BackgroundColor3
							UI_GUI_Color["ColorValue"].Value = LabelSimply:CreateColorSystem()[2].BackgroundColor3
							LabelSimply:CreateColorSystem()[1].Visible = false
							Fixs[1]:Disconnect()
						end)
						Fixs[2] = LabelSimply:CreateColorSystem()[4].Activated:Connect(function()
							LabelSimply:CreateColorSystem()[1].Visible = false
							Fixs[2]:Disconnect()
						end)
					end
					UI_GUI_Color["CallBack"](UI_GUI_Color["TextButton"].BackgroundColor3)
				end)
			end
			function LabelSimplyThree:Tab(Text, ItemText, SettingsTab, TabItems, UITabs, ColorTab, CallBack)
				local UI_GUI_Tab = {
					Frame = UI_Table["Frame"]:Clone(),
					TextButton = UI_Table["TextButton"]:Clone(),
					TextLabel = UI_Table["TextLabel"]:Clone(),
					UIPadding = UI_Table["UIPadding"]:Clone(),
					ImageLabel = UI_Table["ImageLabel"]:Clone(),
					UIPaddingText = UI_Table["UIPadding"]:Clone(),
					StringValue = UI_Table["StringValue"]:Clone(),
					CallBack = CallBack or function() end
				}

				UI_GUI_Tab["Frame"].Parent = UI_GUI_Box["Frame"]
				UI_GUI_Tab["Frame"].Size = UDim2.new(1, 0, 0, 40)
				UI_GUI_Tab["Frame"].BorderSizePixel = 1
				UI_GUI_Tab["Frame"].LayoutOrder = 1

				UI_GUI_Tab["TextLabel"].Parent = UI_GUI_Tab["Frame"]
				UI_GUI_Tab["TextLabel"].LayoutOrder = 0
				UI_GUI_Tab["TextLabel"].Text = Text
				UI_GUI_Tab["TextLabel"].TextSize = 12
				UI_GUI_Tab["TextLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Tab["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_Tab["TextLabel"].AnchorPoint = Vector2.new(0, 0.5)
				UI_GUI_Tab["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)

				UI_GUI_Tab["TextButton"].Parent = UI_GUI_Tab["Frame"]
				UI_GUI_Tab["TextButton"].BorderSizePixel = 1
				UI_GUI_Tab["TextButton"].Text = ItemText
				UI_GUI_Tab["TextButton"].TextSize = 16
				UI_GUI_Tab["TextButton"].Font = Enum.Font.SourceSansBold
				UI_GUI_Tab["TextButton"].AutomaticSize = Enum.AutomaticSize.X
				UI_GUI_Tab["TextButton"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_Tab["TextButton"].BackgroundColor3 = ColorTab --Color3.fromRGB(255, 179, 0)
				UI_GUI_Tab["TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
				UI_GUI_Tab["TextButton"].AutoButtonColor = true
				UI_GUI_Tab["TextButton"].Size = UDim2.new(0, 40, 1, -20)
				UI_GUI_Tab["TextButton"].AnchorPoint = Vector2.new(1, 0.5)
				UI_GUI_Tab["TextButton"].Position = UDim2.new(1, 0, 0.5, 0)

				UI_GUI_Tab["ImageLabel"].Parent = UI_GUI_Tab["TextButton"]
				UI_GUI_Tab["ImageLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Tab["ImageLabel"].SizeConstraint = Enum.SizeConstraint.RelativeYY
				UI_GUI_Tab["ImageLabel"].Image = "rbxassetid://79922404435305"
				UI_GUI_Tab["ImageLabel"].BackgroundTransparency = 1
				UI_GUI_Tab["ImageLabel"].ImageColor3 = Color3.fromRGB(255, 255, 255)
				UI_GUI_Tab["ImageLabel"].AnchorPoint = Vector2.new(1, 0.5)
				UI_GUI_Tab["ImageLabel"].Position = UDim2.new(1, 25, 0.5, 0)

				UI_GUI_Tab["UIPadding"].Parent = UI_GUI_Tab["Frame"]
				UI_GUI_Tab["UIPadding"].PaddingLeft = UDim.new(0, 10)
				UI_GUI_Tab["UIPadding"].PaddingRight = UDim.new(0, 10)

				UI_GUI_Tab["UIPaddingText"].Parent = UI_GUI_Tab["TextButton"]
				UI_GUI_Tab["UIPaddingText"].PaddingLeft = UDim.new(0, 5)
				UI_GUI_Tab["UIPaddingText"].PaddingRight = UDim.new(0, 25)

				UI_GUI_Tab["TextButton"].Activated:Connect(function()
					LabelSimply:CreateTabSystem()[1].BackgroundColor3 = ColorTab
					local function AutoAnimText(ObjectText, ObjectScroll)
						local TweenService = game:GetService("TweenService")
						local A = 50
						local B = (ObjectText.AbsoluteSize.X * 100) / A
						local C = (1 * B) / 100
						local D = (C * 30) / 100
						local TweenInfoOn = TweenInfo.new(C, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 2)
						local TweenInfoOff = TweenInfo.new(D, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 1)
						local TweenTableOn = {Position = UDim2.new(0, LabelSimply:CreateTabSystem()[2].AbsoluteSize.X - ObjectText.AbsoluteSize.X, 0, 0)}
						local TweenTableOff = {Position = UDim2.new(0, 0, 0, 0)}
						local TweenOn = TweenService:Create(ObjectText, TweenInfoOn, TweenTableOn)
						local TweenOff = TweenService:Create(ObjectText, TweenInfoOff, TweenTableOff)
						--task.wait(3)
						local function On()
							TweenOn:Play()
						end
						local function Off()
							TweenOff:Play()
							TweenOff.Completed:Connect(On)
						end
						On()
						TweenOn.Completed:Connect(Off)
						--task.wait(1)
						--TweenOff:Play()
						--TweenOff.Completed:Wait()
					end
					local function AutoPos()
						--UITabs[1].Position = UDim2.new()
						--UITabs[1].Size = UDim2.new()
						--UITabs[1].AnchorPoint = Vector2.new(0, 0.5)
						LabelSimply:CreateTabSystem()[1].Size = UDim2.new(0, UI_GUI_Tab["TextButton"].AbsoluteSize.X, 0, 0)
						LabelSimply:CreateTabSystem()[1].Position = UDim2.new(0, UI_GUI_Tab["TextButton"].AbsolutePosition.X, 0, UI_GUI_Tab["TextButton"].AbsolutePosition.Y + UI_GUI_Tab["TextButton"].AbsoluteSize.Y)
					end
					if LabelSimply:CreateTabSystem()[1].Visible == true then
						LabelSimply:CreateTabSystem()[1].Visible = false
					else
						LabelSimply:CreateTabSystem()[1].Visible = true
						local Test
						Test = UI_GUI_Tab["TextButton"].Changed:Connect(function()
							AutoPos()
							if LabelSimply:CreateTabSystem()[1].Visible == false then
								Test:Disconnect()
							end
						end)
						AutoPos()
						if SettingsTab ~= "Player" then
							for i, v in pairs(LabelSimply:CreateTabSystem()[2]:GetChildren()) do
								if v:IsA("TextButton") then
									v:Destroy()
								end
							end
							for i, v in pairs(TabItems) do
								local Clone = LabelSimply:CreateTabSystem()[3]:Clone()
								Clone.TextLabel.Text = v
								Clone.Parent = LabelSimply:CreateTabSystem()[2]
								local conn
								conn = Clone.Activated:Connect(function()
									UI_GUI_Tab["TextButton"].Text = Clone.TextLabel.Text
									UI_GUI_Tab["StringValue"].Value = v
									LabelSimply:CreateTabSystem()[1].Visible = false
									conn:Disconnect()
								end)
								if Clone.TextLabel.AbsoluteSize.X > LabelSimply:CreateTabSystem()[2].AbsoluteSize.X then
									AutoAnimText(Clone.TextLabel, LabelSimply:CreateTabSystem()[2])
								end
							end

						else
							for i, v in pairs(LabelSimply:CreateTabSystem()[2]:GetChildren()) do
								if v:IsA("TextButton") then
									v:Destroy()
								end
							end
							for i, v in pairs(game:GetService("Players"):GetChildren()) do
								if #game:GetService("Players"):GetChildren() == 1 then
									local Clone = LabelSimply:CreateTabSystem()[3]:Clone()
									Clone.TextLabel.Text = "No player"
									--Clone.Interactable = false
									Clone.Parent = LabelSimply:CreateTabSystem()[2]
									local conn
									conn = Clone.Activated:Connect(function()
										--UI_GUI_Tab["TextButton"].Text = Clone.Text
										LabelSimply:CreateTabSystem()[1].Visible = false
										conn:Disconnect()
									end)
									if Clone.TextLabel.AbsoluteSize.X > LabelSimply:CreateTabSystem()[2].AbsoluteSize.X then
										AutoAnimText(Clone.TextLabel, LabelSimply:CreateTabSystem()[2])
									end
								else
									if game:GetService("Players").LocalPlayer.Name ~= v.Name then
										local Clone = LabelSimply:CreateTabSystem()[3]:Clone()
										Clone.TextLabel.Text = v.DisplayName .."(@".. v.Name ..")"
										Clone.Text = v.Name
										Clone.Parent = LabelSimply:CreateTabSystem()[2]
										local conn
										conn = Clone.Activated:Connect(function()
											UI_GUI_Tab["TextButton"].Text = Clone.TextLabel.Text
											UI_GUI_Tab["StringValue"].Value = v.Name
											LabelSimply:CreateTabSystem()[1].Visible = false
											conn:Disconnect()
										end)
										if Clone.TextLabel.AbsoluteSize.X > LabelSimply:CreateTabSystem()[2].AbsoluteSize.X then
											AutoAnimText(Clone.TextLabel, LabelSimply:CreateTabSystem()[2])
										end
									end
								end
							end
						end
					end
					UI_GUI_Tab["CallBack"](UI_GUI_Tab["TextButton"].Text)
				end)
			end

			function LabelSimplyThree:Key(Object, Text, TextKey, CallBack)
				local UI_GUI_Key = {
					Frame = UI_Table["Frame"]:Clone(),
					TextButton = UI_Table["TextButton"]:Clone(),
					TextLabel = UI_Table["TextLabel"]:Clone(),
					UIPadding = UI_Table["UIPadding"]:Clone(),
					UIPaddingText = UI_Table["UIPadding"]:Clone(),
					StringValue = UI_Table["StringValue"]:Clone(),
					Bool = false,
					CallBack = CallBack or function() end
				}

				UI_GUI_Key["Frame"].Parent = Object
				UI_GUI_Key["Frame"].Size = UDim2.new(1, 0, 0, 40)
				UI_GUI_Key["Frame"].BorderSizePixel = 1
				UI_GUI_Key["Frame"].LayoutOrder = 1

				UI_GUI_Key["TextLabel"].Parent = UI_GUI_Key["Frame"]
				UI_GUI_Key["TextLabel"].LayoutOrder = 0
				UI_GUI_Key["TextLabel"].Text = Text
				UI_GUI_Key["TextLabel"].TextSize = 12
				UI_GUI_Key["TextLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Key["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_Key["TextLabel"].AnchorPoint = Vector2.new(0, 0.5)
				UI_GUI_Key["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)

				UI_GUI_Key["TextButton"].Parent = UI_GUI_Key["Frame"]
				UI_GUI_Key["TextButton"].BorderSizePixel = 1
				UI_GUI_Key["TextButton"].Text = TextKey
				UI_GUI_Key["TextButton"].BackgroundColor3 = Color3.fromRGB(0, 111, 162)
				UI_GUI_Key["TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
				UI_GUI_Key["TextButton"].TextSize = 16
				UI_GUI_Key["TextButton"].Font = Enum.Font.SourceSansBold
				UI_GUI_Key["TextButton"].AutomaticSize = Enum.AutomaticSize.X
				UI_GUI_Key["TextButton"].AutoButtonColor = true
				UI_GUI_Key["TextButton"].Size = UDim2.new(0, 0, 1, -20)
				UI_GUI_Key["TextButton"].AnchorPoint = Vector2.new(1, 0.5)
				UI_GUI_Key["TextButton"].Position = UDim2.new(1, 0, 0.5, 0)

				UI_GUI_Key["UIPadding"].Parent = UI_GUI_Key["Frame"]
				UI_GUI_Key["UIPadding"].PaddingLeft = UDim.new(0, 10)
				UI_GUI_Key["UIPadding"].PaddingRight = UDim.new(0, 10)

				UI_GUI_Key["StringValue"].Value = TextKey

				UI_GUI_Key["UIPaddingText"].Parent = UI_GUI_Key["TextButton"]
				UI_GUI_Key["UIPaddingText"].PaddingLeft = UDim.new(0, 5)
				UI_GUI_Key["UIPaddingText"].PaddingRight = UDim.new(0, 5)

				UI_GUI_Key["TextButton"].Activated:Connect(function()
					if not UI_GUI_Key["Bool"] then
						UI_GUI_Key["TextButton"].Text = "<Press key...>"
						UI_GUI_Key["Bool"] = true
						local conn
						conn = game:GetService("UserInputService").InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.Keyboard then
								UI_GUI_Key["TextButton"].Text = input.KeyCode.Name
								UI_GUI_Key["StringValue"].Value = input.KeyCode.Name
								UI_GUI_Key["Bool"] = false
								conn:Disconnect()
							elseif input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 or input.UserInputType == Enum.UserInputType.MouseButton3 then
								UI_GUI_Key["TextButton"].Text = input.KeyCode.Name
								UI_GUI_Key["StringValue"].Value = input.KeyCode.Name
								UI_GUI_Key["Bool"] = false
								conn:Disconnect()
							end
						end)
					end
				end)
				game:GetService("UserInputService").InputBegan:connect(function(a, gp) 
					if not gp then 
						if a.KeyCode.Name == UI_GUI_Key["TextButton"].Text then 
							UI_GUI_Key["CallBack"]()
						end
					end
				end)
			end

			function LabelSimplyThree:Info(Object, Text)
				local UI_GUI_Info = {
					Frame = UI_Table["Frame"]:Clone(),
					TextLabel = UI_Table["TextLabel"]:Clone(),
					UIPadding = UI_Table["UIPadding"]:Clone(),
				}

				UI_GUI_Info["Frame"].Parent = UI_GUI_Box["Frame"]
				UI_GUI_Info["Frame"].Size = UDim2.new(1, 0, 0, 40)
				UI_GUI_Info["Frame"].BorderSizePixel = 1
				UI_GUI_Info["Frame"].LayoutOrder = 1

				UI_GUI_Info["TextLabel"].Parent = UI_GUI_Info["Frame"]
				UI_GUI_Info["TextLabel"].LayoutOrder = 0
				UI_GUI_Info["TextLabel"].Text = Text
				UI_GUI_Info["TextLabel"].TextSize = 12
				UI_GUI_Info["TextLabel"].Size = UDim2.new(1, 0, 1, 0)
				UI_GUI_Info["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
				UI_GUI_Info["TextLabel"].AnchorPoint = Vector2.new(0, 0.5)
				UI_GUI_Info["TextLabel"].Position = UDim2.new(0, 0, 0.5, 0)

				UI_GUI_Info["UIPadding"].Parent = UI_GUI_Info["Frame"]
				UI_GUI_Info["UIPadding"].PaddingLeft = UDim.new(0, 10)
				UI_GUI_Info["UIPadding"].PaddingRight = UDim.new(0, 10)
			end
			return LabelSimplyThree
		end
		
		local UI_GUI_Menu = {
			TextButton = UI_Table["TextButton"]:Clone(),
			UIListLayout = UI_Table["UIListLayout"]:Clone(),
			ImageLabel = UI_Table["ImageLabel"]:Clone(),
			TextLabel = UI_Table["TextLabel"]:Clone(),
		}

		UI_GUI_Menu["TextButton"].Parent = UI_GUI_Bulider["ScrollingFrameMenu"]
		UI_GUI_Menu["TextButton"].Size = UDim2.new(1, 0, 0, 40)
		UI_GUI_Menu["TextButton"].BorderSizePixel = 1
		UI_GUI_Menu["TextButton"].Text = ""
		UI_GUI_Menu["TextButton"].AutoButtonColor = false

		UI_GUI_Menu["UIListLayout"].Parent = UI_GUI_Menu["TextButton"]
		UI_GUI_Menu["UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Center
		UI_GUI_Menu["UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
		UI_GUI_Menu["UIListLayout"].FillDirection = Enum.FillDirection.Horizontal

		UI_GUI_Menu["ImageLabel"].Parent = UI_GUI_Menu["TextButton"]
		UI_GUI_Menu["ImageLabel"].Image = Image --"rbxassetid://116558416127511"
		UI_GUI_Menu["ImageLabel"].ImageColor3 = Color3.fromRGB(0, 0, 0)
		UI_GUI_Menu["ImageLabel"].Size = UDim2.new(0, 40, 0, 40)
		UI_GUI_Menu["ImageLabel"].LayoutOrder = 1
		UI_GUI_Menu["ImageLabel"].BackgroundTransparency = 1

		UI_GUI_Menu["TextLabel"].Parent = UI_GUI_Menu["TextButton"]
		UI_GUI_Menu["TextLabel"].Size = UDim2.new(1, -40, 1, 0)
		UI_GUI_Menu["TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
		UI_GUI_Menu["TextLabel"].Text = Text
		UI_GUI_Menu["TextLabel"].TextSize = 12
		UI_GUI_Menu["TextLabel"].LayoutOrder = 2
		UI_GUI_Menu["TextLabel"].BackgroundTransparency = 1

		if MainBool == true then
			UI_GUI_Menu["TextButton"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			UI_GUI_Menu["ImageLabel"].ImageColor3 = Color3.fromRGB(255, 255, 255)
			UI_GUI_Menu["TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)

		end

		if UI_GUI_MenuBox["ScrollingFrameBox"] ~= nil then
			UI_GUI_Menu["TextButton"].Activated:Connect(function()
				UI_GUI_MenuBox["ScrollingFrameBox"].Visible = true
				UI_GUI_Menu["TextButton"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				UI_GUI_Menu["ImageLabel"].ImageColor3 = Color3.fromRGB(255, 255, 255)
				UI_GUI_Menu["TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
				for i, v in pairs(UI_GUI_Bulider["ScrollingFrameMenu"]:GetChildren()) do
					if v:IsA("TextButton") then
						if v ~= UI_GUI_Menu["TextButton"] then
							if v.BackgroundColor3 ~= Color3.fromRGB(255, 255, 255) then
								v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v.ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
								v.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
							end
						end
					end
				end
				for i, v in pairs(UI_GUI_MenuBox["ScrollingFrameBox"]:GetChildren()) do
					if v:IsA("ScrollingFrame") then
						if v ~= UI_GUI_MenuBox["ScrollingFrameBox"] then
							if v.Visible ~= false then
								v.Visible = false
							end
						end
					end
				end
			end)
			if MainBool == true then
				UI_GUI_MenuBox["ScrollingFrameBox"].Visible = true
			else
				UI_GUI_MenuBox["ScrollingFrameBox"].Visible = false
			end
		end
		return LabelSimplyTwo
	end

	return LabelSimply
end

return SimplyUI
