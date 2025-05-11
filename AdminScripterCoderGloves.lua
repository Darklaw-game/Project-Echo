local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Admin/Custom", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab = Window:MakeTab({
	Name = "Custom Gloves",
	Icon = "rbxassetid://7733955740",
	PremiumOnly = false
	})

local Section = Tab:AddSection({
	Name = "Scripter (Me)"
})

Tab:AddButton({
	Name = "Pixelation Glove BETA",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripter-Coder/Scripter-Coder/refs/heads/main/Slap%20Battles/Pixelation%20Glove"))()
end    
})

local Section = Tab:AddSection({
	Name = "DonjoSyntaX"
})

Tab:AddButton({
	Name = "Edgelord Glove",
	Callback = function()
OrionLib:MakeNotification({Name = "Error",Content = "Script Is Not Found Or Not Released Yet Please Wait Until Release",Image = "rbxassetid://7743878857",Time = 3})
end    
})

Tab:AddButton({
	Name = "Death Glove 0.8",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DonjoScripts/Public-Scripts/refs/heads/Slap-Battles/death%5B0.8%5D.lua"))()
end    
})

Tab:AddButton({
	Name = "Death Glove Unfinished",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DonjoScripts/Public-Scripts/refs/heads/Slap-Battles/UnFinishedDeathGlove-MadeByTheFool-.lua"))()
end    
})

local Section = Tab:AddSection({
	Name = "Incognito Scripts"
})

Tab:AddButton({
	Name = "Sans Glove",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/refs/heads/main/SansGloveFinished'))()
end    
})

Tab:AddButton({
	Name = "Edgelord Glove",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/refs/heads/main/Edgelord"))()
end    
})

local Section = Tab:AddSection({
	Name = "Kizzy"
})

Tab:AddButton({
	Name = "Crystallized Glove (Night Mode On)",
	Callback = function()
_G.NightMode = true -- Night mode is better, setting this to false will make the script looks ass
loadstring(game:HttpGet("https://github.com/kizzysigma/nan/raw/refs/heads/main/CrystalizedOBFS"))()
end    
})

Tab:AddButton({
	Name = "Crystallized Glove (Night Mode Off)",
	Callback = function()
_G.NightMode = false -- Night mode is better, setting this to false will make the script looks ass
loadstring(game:HttpGet("https://github.com/kizzysigma/nan/raw/refs/heads/main/CrystalizedOBFS"))()
end    
})

Tab:AddButton({
	Name = "Duality Glove",
	Callback = function()
loadstring(game:HttpGet("https://github.com/fizzyscripting/nan/raw/refs/heads/main/DualityOBFS"))()
end    
})

Tab:AddButton({
	Name = "Mayhem Glove",
	Callback = function()
OrionLib:MakeNotification({Name = "Error",Content = "Script Is Not Found Or Not Released Yet Please Wait Until Release",Image = "rbxassetid://7743878857",Time = 3})
end    
})

local Section = Tab:AddSection({
	Name = "The SPRG"
})

Tab:AddButton({
	Name = "FE 1K KILLSTREAK Glove",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/UpgradeFe1KKillstreak"))()
end    
})

Tab:AddButton({
	Name = "Killerfish Glove",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/Killerfish.txt"))()
end    
})

Tab:AddButton({
	Name = "Overseer Glove",
	Callback = function()
OrionLib:MakeNotification({Name = "Error",Content = "Script Is Not Found Or Not Released Yet Please Wait Until Release",Image = "rbxassetid://7743878857",Time = 3})
end    
})

Tab:AddButton({
	Name = "Mino Prime Glove 1.5",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/MinosPrimeFanMade1.5.txt"))()
end    
})

local Tab = Window:MakeTab({
	Name = "Admin Gloves",
	Icon = "rbxassetid://7733955740",
	PremiumOnly = false
	})

local Section = Tab:AddSection({
	Name = "BOOBLE"
})

Tab:AddButton({
	Name = "BOOBLE",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Bubble" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BoobleButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").BubbleThrow:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Bubble Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
	end
})

Tab:AddParagraph("How It Works?","Uses Bubble Glove But Without Cooldown And It Creates E Button Where U Can Click To Use BOOBLE And There Will Be Cd Protection So U Wont Get Kicked")

local Section = Tab:AddSection({
	Name = "BoggieWoogie"
})

Tab:AddButton({
	Name = "BoggieWoogie",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BoogieWoogieButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").SLOC:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Swapper Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","Uses Swapper Glove But Without Cooldown And It Creates E Button Where U Can Click To Use BoggieWoogie And There Will Be Cd Protection So U Wont Get Kicked")

local Section = Tab:AddSection({
	Name = "Clone()"
})

Tab:AddButton({
	Name = "Clone()",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CloneButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").Duplicate:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Replica Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","Uses Replica Glove But Without Cooldown And It Creates E Button Where U Can Click To Use Clone() And There Will Be Cd Protection So U Wont Get Kicked")

local Section = Tab:AddSection({
	Name = "Edgelord"
})

Tab:AddButton({
	Name = "Edgelord",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Dual" then
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Animation instances
local idleAnim = Instance.new("Animation")
idleAnim.AnimationId = "rbxassetid://16163355836"  -- Idle animation
local walkAnim = Instance.new("Animation")
walkAnim.AnimationId = "rbxassetid://16163350920"  -- Walking animation

-- Load animations
local idleTrack = humanoid:LoadAnimation(idleAnim)
local walkTrack = humanoid:LoadAnimation(walkAnim)

-- Function to update the animation based on walking or standing
local function updateAnimation()
    if humanoid.WalkSpeed > 0 then
        -- If the player is walking, play walking animation
        if not walkTrack.IsPlaying then
            walkTrack:Play()
            idleTrack:Stop()  -- Stop idle animation if walking
        end
    else
        -- If the player is standing still, play idle animation
        if not idleTrack.IsPlaying then
            idleTrack:Play()
            walkTrack:Stop()  -- Stop walking animation if standing still
        end
    end
end

-- Continuously update the animation based on the player's state
game:GetService("RunService").Heartbeat:Connect(function()
    updateAnimation()
end)
----------------------------------------------------------------------------------------------------------------E BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordEButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
local player = game.Players.LocalPlayer
local animationId = "rbxassetid://17670135152"  -- The animation ID you provided

local function playAnimation()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- Create the animation instance
    local animation = Instance.new("Animation")
    animation.AnimationId = animationId  -- Set the animation ID

    -- Load the animation onto the humanoid
    local animationTrack = humanoid:LoadAnimation(animation)

    -- Play the animation
    animationTrack:Play()
end

-- Example: Play animation when script runs (can be triggered by other events too)
task.wait()  -- Optional wait to ensure character is fully loaded
playAnimation()

            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            
            for _, player in pairs(Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local args = { [1] = player.Character.HumanoidRootPart }
                    ReplicatedStorage:WaitForChild("GeneralHit"):FireServer(unpack(args))
                end
            end

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
----------------------------------------------------------------------------------------------------------------R BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordRButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 295)
button.Text = "R"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
game.Players.LocalPlayer.Character.Humanoid.Health = 0

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "R"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
----------------------------------------------------------------------------------------------------------------T BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordTButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1305, 0, 295)
button.Text = "T"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function teleportForward()
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    -- Get the direction the player is facing
    local lookDirection = hrp.CFrame.LookVector.Unit

    -- Move 5 studs in that direction
    local offset = lookDirection * 20
    local newPosition = hrp.Position + offset

    -- Teleport the player forward
    hrp.CFrame = CFrame.new(newPosition, newPosition + lookDirection)
end

teleportForward()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "T"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
----------------------------------------------------------------------------------------------------------------F BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordFButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1305, 0, 400)
button.Text = "F"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Dual" then
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Kinetic",Image = "rbxassetid://7743878857",Time = 3})
end

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "F"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button

else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Dual Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","It Adds 4 Buttons E = Edgelord Slap (Need Dual Glove), T = Teleports 20 Studs Forward, F = Gives +1 Kinetic Aura (Need Kinetic Glove), R = Resets Player (you) That All Also Walk And Stand Animation Going To Be Changed To Edgelord And Edgelord's Slap Animation Also Going To Be Added")

local Section = Tab:AddSection({
	Name = "Killerfish"
})

Tab:AddButton({
	Name = "Killerfish",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/Killerfish.txt"))()
end    
})

Tab:AddParagraph("How It Works?","Can Be Any Glove And E Ability Will Do Ability As Fish Glove But You Can Use With 0 Cd And Without Getting Kicked")

local Section = Tab:AddSection({
	Name = "Minecraft"
})

Tab:AddButton({
	Name = "Minecraft",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MinecraftButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").lbrick:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Brick Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","Uses Brick Glove But Without Cooldown And It Creates E Button Where U Can Click To Use Minecraft And There Will Be Cd Protection So U Wont Get Kicked")

local Section = Tab:AddSection({
	Name = "Super Parry"
})

Tab:AddButton({
	Name = "Super Parry",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Parry" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SuperParryButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Parry Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","Uses Parry Glove But Without Cooldown And It Creates E Button Where U Can Click To Use Super Parry And There Will Be Cd Protection So U Wont Get Kicked")

local Section = Tab:AddSection({
	Name = "TABLE"
})

Tab:AddButton({
	Name = "TABLE",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Tableflip" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TABLEButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Tableflip Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","Uses Tableflip Glove But Without Cooldown And It Creates E Button Where U Can Click To Use TABLE And There Will Be Cd Protection So U Wont Get Kicked")

local Section = Tab:AddSection({
	Name = "TERRY"
})

Tab:AddButton({
	Name = "TERRY",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Run" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TERRYButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 5 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").RunMasteryAbility:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Run Mastered Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","Uses Run Mastered Glove But Without Cooldown And It Creates R Button Where U Can Click To Use TERRY And There Will Be Cd Protection So U Wont Get Kicked")

local Section = Tab:AddSection({
	Name = "Train"
})

Tab:AddButton({
	Name = "Train",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "bus" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TrainButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").busmoment:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Bus Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddButton({
	Name = "Train (Kicks)",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CloneButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1200, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
while true do
game:GetService("ReplicatedStorage").busmoment:FireServer()
task.wait()
end

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- 👈 Clean: scale 0, offset 9
corner.Parent = button
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Bus Glove To Work",Image = "rbxassetid://7743878857",Time = 3})
end
end    
})

Tab:AddParagraph("How It Works?","Uses Bus Glove But Without Cooldown And It Creates E Button Where U Can Click To Use BoggieWoogie And There Will Be Cd Protection So U Wont Get Kicked")

Tab:AddParagraph("Or","")

Tab:AddParagraph("How It Works?","Uses Bus Glove But With E Button And When U Click Its Gonna Spawn Like 100 Busses But U Get Kicked")
