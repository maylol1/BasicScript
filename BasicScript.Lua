--This Is Brought To You By maylol1, Using Fly In Dahood Will Perma ban u (SpeedHack Isnt Tested Yet).
local MainScreen = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Footer = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local SpeedHack = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
 
 
 
MainScreen.Name = "MainScreen"
MainScreen.Parent = game.CoreGui
 
Frame.Name = "Frame"
Frame.Parent = MainScreen
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0675944313, 0, 0.277542382, 0)
Frame.Size = UDim2.new(0, 205, 0, 222)
Frame.Image = "rbxassetid://3570695787"
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.Active = true
Frame.Draggable = true
 
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BorderColor3 = Color3.fromRGB(255, 255, 255)
Title.Position = UDim2.new(0.122707658, 0, -0.00173690915, 0)
Title.Size = UDim2.new(0, 153, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Basic Gui"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 46.000
 
Footer.Name = "Footer"
Footer.Parent = Frame
Footer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Footer.BorderColor3 = Color3.fromRGB(255, 255, 255)
Footer.Position = UDim2.new(0.127585649, 0, 0.738738716, 0)
Footer.Size = UDim2.new(0, 152, 0, 50)
Footer.Font = Enum.Font.SourceSansLight
Footer.Text = "Made By maylol1#8468"
Footer.TextColor3 = Color3.fromRGB(0, 0, 0)
Footer.TextSize = 26.000
 
Fly.Name = "Fly"
Fly.Parent = Frame
Fly.BackgroundColor3 = Color3.fromRGB(30, 150, 255)
Fly.BorderColor3 = Color3.fromRGB(255, 255, 255)
Fly.Position = UDim2.new(0.0610047132, 0, 0.219193816, 0)
Fly.Size = UDim2.new(0, 80, 0, 51)
Fly.Font = Enum.Font.SciFi
Fly.Text = "X To Fly"
Fly.TextColor3 = Color3.fromRGB(0, 0, 0)
Fly.TextSize = 20.000
Fly.MouseButton1Down:connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
 
	local cam = workspace.CurrentCamera
	local uis = game:GetService("UserInputService")
 
 
	local wPressed = false
	local sPressed = false
	local aPressed = false
	local dPressed = false
 
	local flying = false
	uis.InputBegan:Connect(function(key, chat)
		if chat then return end
		if key.KeyCode == Enum.KeyCode.X then
			if flying then --Stop Flying
				flying = false
 
			else --Start Flying
				flying = true
 
 
				local bv = Instance.new("BodyVelocity", char.PrimaryPart)
				bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				bv.Velocity = Vector3.new(0,0,0)
				bv.Name = "FlightForce"
 
				repeat wait(0.1) until flying == false
				bv:Destroy()
			end
		end
 
		if key.KeyCode == Enum.KeyCode.W then
			wPressed = true
		elseif key.KeyCode == Enum.KeyCode.S then
			sPressed = true
		elseif key.KeyCode == Enum.KeyCode.A then
			aPressed = true
		elseif key.KeyCode == Enum.KeyCode.D then
			dPressed = true
		end
	end)
 
	uis.InputEnded:Connect(function(key)	
		if key.KeyCode == Enum.KeyCode.W then
			wPressed = false
		elseif key.KeyCode == Enum.KeyCode.S then
			sPressed = false
		elseif key.KeyCode == Enum.KeyCode.A then
			aPressed = false
		elseif key.KeyCode == Enum.KeyCode.D then
			dPressed = false
		end
	end)
 
	while wait() do
		if flying then
			char.PrimaryPart:FindFirstChild("FlightForce").Velocity = Vector3.new(0,0,0)
 
			if wPressed then
				char.PrimaryPart:FindFirstChild("FlightForce").Velocity = cam.CFrame.LookVector * 100
			end
			if sPressed then
				char.PrimaryPart:FindFirstChild("FlightForce").Velocity = cam.CFrame.LookVector * -100
			end
			if aPressed then
				char.PrimaryPart:FindFirstChild("FlightForce").Velocity = cam.CFrame.RightVector * -100
			end
			if dPressed then
				char.PrimaryPart:FindFirstChild("FlightForce").Velocity = cam.CFrame.RightVector * 100
			end
		else
			wait(1)
		end
	end
end)
 
SpeedHack.Name = "SpeedHack"
SpeedHack.Parent = Frame
SpeedHack.BackgroundColor3 = Color3.fromRGB(30, 150, 255)
SpeedHack.BorderColor3 = Color3.fromRGB(255, 255, 255)
SpeedHack.Position = UDim2.new(0.502439022, 0, 0.219193816, 0)
SpeedHack.Size = UDim2.new(0, 84, 0, 51)
SpeedHack.Font = Enum.Font.SciFi
SpeedHack.Text = "SpeedHack"
SpeedHack.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedHack.TextSize = 17.000
SpeedHack.MouseButton1Down:connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
 
	char.Humanoid.WalkSpeed =100 --here the number of how fast u wanna go
end)
 
NoClip.Name = "NoClip"
NoClip.Parent = Frame
NoClip.BackgroundColor3 = Color3.fromRGB(30, 150, 255)
NoClip.Position = UDim2.new(0.127585664, 0, 0.513513505, 0)
NoClip.Size = UDim2.new(0, 140, 0, 50)
NoClip.Font = Enum.Font.SciFi
NoClip.Text = "NoClip"
NoClip.TextColor3 = Color3.fromRGB(0, 0, 0)
NoClip.TextSize = 30.000
NoClip.MouseButton1Down:connect(function()
	local s = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RobloxScripts52/noclip/main/noclip.lua"), true))()
	print(s)
end)
