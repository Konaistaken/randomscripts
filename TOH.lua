-- Gui to Lua


-- Version: 3.2



-- Instances:



local Library = Instance.new("ScreenGui")


local Window = Instance.new("Frame")


local Title = Instance.new("TextLabel")


local close = Instance.new("ImageButton")


local Section = Instance.new("Frame")


local TogglerLabel = Instance.new("TextLabel")


local TogglerButton = Instance.new("TextButton")


local Button = Instance.new("TextButton")


local Button_2 = Instance.new("TextButton")



--Properties:



Library.Name = "Library"


Library.Parent = game.CoreGui


Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



Window.Name = "Window"


Window.Parent = Library


Window.BackgroundColor3 = Color3.fromRGB(40, 40, 40)


Window.BorderSizePixel = 0


Window.Position = UDim2.new(0.523696721, 0, 0.311195433, 0)


Window.Size = UDim2.new(0, 155, 0, 23)



Title.Name = "Title"


Title.Parent = Window


Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


Title.BackgroundTransparency = 1.000


Title.Size = UDim2.new(0, 88, 0, 23)


Title.Font = Enum.Font.SourceSans


Title.Text = "Tower Of Hell"


Title.TextColor3 = Color3.fromRGB(255, 255, 255)


Title.TextScaled = true


Title.TextSize = 14.000


Title.TextWrapped = true



close.Name = "close"


close.Parent = Window


close.BackgroundTransparency = 1.000


close.Position = UDim2.new(0.841935456, 0, 0.0652173981, 0)


close.Size = UDim2.new(0, 18, 0, 19)


close.ZIndex = 2


close.Image = "rbxassetid://3926305904"


close.ImageRectOffset = Vector2.new(284, 4)


close.ImageRectSize = Vector2.new(24, 24)



Section.Name = "Section"


Section.Parent = Window


Section.BackgroundColor3 = Color3.fromRGB(20, 20, 20)


Section.BorderColor3 = Color3.fromRGB(20, 20, 20)


Section.BorderSizePixel = 0


Section.Position = UDim2.new(-0.00125673355, 0, 0.982009232, 0)


Section.Size = UDim2.new(0, 155, 0, 235)



TogglerLabel.Name = "TogglerLabel"


TogglerLabel.Parent = Section


TogglerLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


TogglerLabel.BackgroundTransparency = 1.000


TogglerLabel.Position = UDim2.new(0.0838709697, 0, 0.055319149, 0)


TogglerLabel.Size = UDim2.new(0, 75, 0, 20)


TogglerLabel.Font = Enum.Font.SourceSans


TogglerLabel.Text = "God Mode"


TogglerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)


TogglerLabel.TextScaled = true


TogglerLabel.TextSize = 14.000


TogglerLabel.TextWrapped = true



TogglerButton.Name = "TogglerButton"


TogglerButton.Parent = Section


TogglerButton.BackgroundColor3 = Color3.fromRGB(172, 0, 0)


TogglerButton.BorderColor3 = Color3.fromRGB(73, 221, 0)


TogglerButton.BorderSizePixel = 0


TogglerButton.Position = UDim2.new(0.628518581, 0, 0.0425531901, 0)


TogglerButton.Size = UDim2.new(0, 33, 0, 26)


TogglerButton.Font = Enum.Font.SourceSans


TogglerButton.Text = ""


TogglerButton.TextColor3 = Color3.fromRGB(255, 255, 255)


TogglerButton.TextSize = 14.000



Button.Name = "Button"


Button.Parent = Section


Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)


Button.BorderSizePixel = 0


Button.Position = UDim2.new(0.192089647, 0, 0.229787245, 0)


Button.Size = UDim2.new(0, 95, 0, 29)


Button.Font = Enum.Font.SourceSans


Button.Text = "Disable Anti-Cheat"


Button.TextColor3 = Color3.fromRGB(255, 255, 255)


Button.TextScaled = true


Button.TextSize = 14.000


Button.TextWrapped = true



Button_2.Name = "Button"


Button_2.Parent = Section


Button_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)


Button_2.BorderSizePixel = 0


Button_2.Position = UDim2.new(0.192089647, 0, 0.374468088, 0)


Button_2.Size = UDim2.new(0, 95, 0, 29)


Button_2.Font = Enum.Font.SourceSans


Button_2.Text = "infnite jump"


Button_2.TextColor3 = Color3.fromRGB(255, 255, 255)


Button_2.TextScaled = true


Button_2.TextSize = 14.000


Button_2.TextWrapped = true



-- Scripts:



local function EYROA_fake_script() -- close.LocalScript 


	local script = Instance.new('LocalScript', close)



	local SSS = script.Parent.Parent.Section


	


	script.Parent.MouseButton1Down:Connect(function()


		if _G.Toggler == false then


			_G.Toggler = true


			SSS.Visible = false


		else


			_G.Toggler = false


			SSS.Visible = true


		end


	end)


end


coroutine.wrap(EYROA_fake_script)()


local function WXQUPD_fake_script() -- TogglerButton.LocalScript 


	local script = Instance.new('LocalScript', TogglerButton)



	getgenv().godmode = false


	game.Players.LocalPlayer.CharacterAdded:Connect(function(char)


		char:WaitForChild("KillScript").Disabled = getgenv().godmode


	end)


	


	script.Parent.MouseButton1Down:Connect(function()


		if _G.Toggler == false then


			_G.Toggler = true


			script.Parent.BackgroundColor3 = Color3.fromRGB(73, 221, 0)


			getgenv().godmode = true


			char.KillScript.Disabled = getgenv().godmode


		else 


			_G.Toggler = false


			script.Parent.BackgroundColor3 = Color3.fromRGB(172, 0, 0)


			getgenv().godmode = false


			char.KillScript.Disabled = getgenv().godmode


		end


	end)


end


coroutine.wrap(WXQUPD_fake_script)()


local function JXHQGK_fake_script() -- Button.LocalScript 


	local script = Instance.new('LocalScript', Button)



	script.Parent.MouseButton1Down:Connect(function()


		getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript).kick = function()


			return;


		end


	end)


	


	


	


end


coroutine.wrap(JXHQGK_fake_script)()


local function IAIONS_fake_script() -- Button_2.LocalScript 


	local script = Instance.new('LocalScript', Button_2)



	script.Parent.MouseButton1Down:Connect(function()


		game:GetService("UserInputService").JumpRequest:connect(function()


			if InfiniteJumpEnabled then


				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")


			end


		end)


	end)


end


coroutine.wrap(IAIONS_fake_script)()


local function UVCCR_fake_script() -- Window.LocalScript 


	local script = Instance.new('LocalScript', Window)



	local UIS = game:GetService('UserInputService')


	local frame = script.Parent


	local dragToggle = nil


	local dragSpeed = 0.25


	local dragStart = nil


	local startPos = nil


	


	local function updateInput(input)


		local delta = input.Position - dragStart


		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,


			startPos.Y.Scale, startPos.Y.Offset + delta.Y)


		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()


	end


	


	frame.InputBegan:Connect(function(input)


		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 


			dragToggle = true


			dragStart = input.Position


			startPos = frame.Position


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


end


coroutine.wrap(UVCCR_fake_script)()


