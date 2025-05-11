local GloveStands, Portal = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Donjosx/GenZ/refs/heads/main/LobbyName.lua'),true))()


game.StarterGui:SetCore("SendNotification", {Title = "Credit!", Text = "Edgelord V4 made by @DonjoSx, Credit to @SBScripts [Original]", Duration = 5})
print("Edgelord made by DonjoSx")

if not edgelordsetting then
	edgelordsetting = {
		HideClientVFX = false
	}
end
--[[Wait For Game]]--
if not game:IsLoaded() then
    game.Loaded:Wait()
end

if not game.Players.LocalPlayer.Character then return end
if game.Players.LocalPlayer.leaderstats.Glove.Value == "edgelord" then return end

local ToolRemote
local LastTool

local function findTool()
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass('Tool')
	if not tool then
		local character = game.Players.LocalPlayer.Character
		if character then
			tool = character:FindFirstChildOfClass('Tool')
		end
	end
	return tool
end

local function getToolHitRemote()
	local tool = findTool()
	if tool.Name == "Boxer" then ToolRemote = game.ReplicatedStorage.Events.Boxing return ToolRemote end
	if tool and tool ~= LastTool then
		LastTool = tool
		local scr = tool:FindFirstChildWhichIsA('LocalScript')

		if scr then
			for _, o in pairs(getgc()) do
				if type(o) == 'function' and getfenv(o).script == scr then
					local c = debug.getconstants(o)
					
					for _, p in pairs(c) do
						if p == 'isInArena' then
							for _, p2 in pairs(c) do
								for _, j in pairs(game.ReplicatedStorage:GetChildren()) do
									if j:IsA('RemoteEvent') and j.Name == p2 and j.Name ~= "GeneralAbility" then
										ToolRemote = j
										if ToolRemote then 
											if ToolRemote == game.ReplicatedStorage.b then ToolRemote = nil end
											
										end
										return ToolRemote
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

local function ToolSlap(plr, value)
	if not value then value = false end 
	if ToolRemote then
		ToolRemote:FireServer(unpack({[1] = plr, [2] = value}))
	end
end

if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
	repeat wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Portal.CFrame until game.Players.LocalPlayer.Character:FindFirstChild("entered") 
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" then
        ToolRemote = getToolHitRemote()
    end
end
game.Players.LocalPlayer.Character.Humanoid.Health = 0
wait(3.5)

local timePosition = 0
local Soundstopped = false
local createSound = loadstring(game:HttpGet("https://pastefy.app/yDd0Tkwi/raw"))() 
local CanStopEdgelord = true
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WalkSpeedChanged" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
       return
   end
   return Namecall(self, ...)
end)

local cloneref = cloneref or function(o) return o end
RunService = cloneref(game:GetService("RunService"))
--[[Lobby Check+Destroy Old]]--
if game.Players.LocalPlayer.Character.isInArena.Value == true then
	game.StarterGui:SetCore("SendNotification", {Title = "ERROR", Text = "Script can only be using in lobby.", Duration = 3})
	return
end
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui") ~= nil then
	game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui"):Destroy()
end
if game.Workspace:FindFirstChild("SafeSpotFlatPart") ~= nil then
	game.Workspace:FindFirstChild("SafeSpotFlatPart"):Destroy()
end

--[[Create SettingZone]]--
local SafeSpotFlatPart = Instance.new("Part", workspace)
SafeSpotFlatPart.Position = Vector3.new(86, -12173, 78)
SafeSpotFlatPart.Name = "SafeSpotFlatPart"
SafeSpotFlatPart.Size = Vector3.new(100, 0.1, 100)
SafeSpotFlatPart.Anchored = true
SafeSpotFlatPart.Transparency = 0
SafeSpotFlatPart.CanCollide = true

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("SafeSpotFlatPart").CFrame * CFrame.new(0, 1, 0)

--[[Create functionGUI]]--
local function AddCorner(instance, radius)
    local corner = Instance.new("UICorner", instance)
    corner.CornerRadius = UDim.new(0, radius)
    return corner
end
local function AddStroke(instance, thickness)
	local Stroke = Instance.new("UIStroke", instance)
	Stroke.Color = Color3.new(0, 0, 0)
	Stroke.Thickness = thickness
	return Stroke
end

local function createGradient(frame, color1, color2)
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, color1),
        ColorSequenceKeypoint.new(1, color2)
    }
    gradient.Parent = frame
    return gradient
end

local EdgelordGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
EdgelordGui.Name = "EdgelordGui"
EdgelordGui.ResetOnSpawn = false
EdgelordGui.DisplayOrder = 1

local EAbilityButton = Instance.new("Frame",EdgelordGui)
EAbilityButton.BackgroundColor3 = Color3.new(100, 0, 0)
EAbilityButton.Size = UDim2.new(.1 , 0, .22 , 0) 
EAbilityButton.Position = UDim2.new(0.82, 0, 0.06, 0)
EAbilityButton.Transparency = 0
EAbilityButton.Draggable = false
EAbilityButton.Visible = false
local EAbilityButtonReal = Instance.new("TextButton",EAbilityButton)
EAbilityButtonReal.Size = UDim2.new(1, 0, 1, 0)
EAbilityButtonReal.Position = UDim2.new(0, 0, 0, 0)
EAbilityButtonReal.Text = "E"
EAbilityButtonReal.TextSize = 80
EAbilityButtonReal.TextColor3 = Color3.new(255, 255, 255)
EAbilityButtonReal.Font = Enum.Font.SourceSans
EAbilityButtonReal.BackgroundTransparency = 1
AddCorner(EAbilityButton, 10)
AddStroke(EAbilityButton, 4)
createGradient(EAbilityButton, Color3.new(1,1,1), Color3.new(0,0,1))
local TAbilityButton = Instance.new("Frame",EdgelordGui)
TAbilityButton.BackgroundColor3 = Color3.new(100, 0, 0)
TAbilityButton.Size = UDim2.new(.1 , 0, .22 , 0) 
TAbilityButton.Position = UDim2.new(0.76, 0, 0.3, 0)
TAbilityButton.Transparency = 0
TAbilityButton.Draggable = false
TAbilityButton.Visible = false
local TAbilityButtonReal = Instance.new("TextButton",TAbilityButton)
TAbilityButtonReal.Size = UDim2.new(1, 0, 1, 0)
TAbilityButtonReal.Position = UDim2.new(0, 0, 0, 0)
TAbilityButtonReal.Text = "T"
TAbilityButtonReal.TextSize = 80
TAbilityButtonReal.TextColor3 = Color3.new(255, 255, 255)
TAbilityButtonReal.Font = Enum.Font.SourceSans
TAbilityButtonReal.BackgroundTransparency = 1
AddCorner(TAbilityButton, 10)
AddStroke(TAbilityButton, 4)
createGradient(TAbilityButton, Color3.new(1,1,1), Color3.new(0,0,1))
local FAbilityButton = Instance.new("Frame",EdgelordGui)
FAbilityButton.BackgroundColor3 = Color3.new(100, 0, 0)
FAbilityButton.Size = UDim2.new(.1 , 0, .22 , 0)
FAbilityButton.Position = UDim2.new(0.87, 0, 0.3, 0)
FAbilityButton.Transparency = 0
FAbilityButton.Draggable = false
FAbilityButton.Visible = false
local FAbilityButtonReal = Instance.new("TextButton",FAbilityButton)
FAbilityButtonReal.Size = UDim2.new(1, 0, 1, 0)
FAbilityButtonReal.Position = UDim2.new(0, 0, 0, 0)
FAbilityButtonReal.Text = "F"
FAbilityButtonReal.TextSize = 80
FAbilityButtonReal.TextColor3 = Color3.new(255, 255, 255)
FAbilityButtonReal.Font = Enum.Font.SourceSans
FAbilityButtonReal.BackgroundTransparency = 1
AddCorner(FAbilityButton, 10)
AddStroke(FAbilityButton, 4)
createGradient(FAbilityButton, Color3.new(1,1,1), Color3.new(0,0,1))
local TelekineticOnTap = Instance.new("TextButton", EdgelordGui)
TelekineticOnTap.Size = UDim2.new(0.112, 0, 0.1, 0)
TelekineticOnTap.Position = UDim2.new(0.75, 0, 0.53, 0)
TelekineticOnTap.BackgroundColor3 = Color3.new(0, 0, 0)
TelekineticOnTap.Text = "Touch use ability (Enabled)"
TelekineticOnTap.TextScaled = true
TelekineticOnTap.TextColor3 = Color3.new(255, 255, 255)
TelekineticOnTap.Font = Enum.Font.Cartoon
TelekineticOnTap.Transparency = 0.4
TelekineticOnTap.Visible = false
AddCorner(TelekineticOnTap, 5)
local TouchToTelekinetic = true
TelekineticOnTap.MouseButton1Click:Connect(function()
	if TelekineticOnTap.Text == "Touch use ability (Enabled)" then
		TelekineticOnTap.Text = "Touch use ability (Disabled)"
		TouchToTelekinetic = false
	else
		TelekineticOnTap.Text = "Touch use ability (Enabled)"
		TouchToTelekinetic = true
	end
end)

local SlapstickMode = Instance.new("TextButton", EdgelordGui)
SlapstickMode.Size = UDim2.new(0.112, 0, 0.1, 0)
SlapstickMode.Position = UDim2.new(0.865, 0, 0.53, 0)
SlapstickMode.BackgroundColor3 = Color3.new(0, 0, 0)
SlapstickMode.Text = "Slapstick mode (Disabled)"
SlapstickMode.TextScaled = true
SlapstickMode.TextColor3 = Color3.new(255, 255, 255)
SlapstickMode.Font = Enum.Font.Cartoon
SlapstickMode.Transparency = 0.4
SlapstickMode.Visible = false
AddCorner(SlapstickMode, 5)
local Slapstick = false
if not ToolRemote then SlapstickMode.Text = "Slapstick mode (LOCKED)" end

SlapstickMode.MouseButton1Click:Connect(function()
	if SlapstickMode.Text == "Slapstick mode (Disabled)" then
		SlapstickMode.Text = "Slapstick mode (Enabled)"
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode enabled", Duration = 1})
		Slapstick = true
	elseif SlapstickMode.Text == "Slapstick mode (Enabled)" then
		SlapstickMode.Text = "Slapstick mode (Disabled)"
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode disabled", Duration = 1})
		Slapstick = false
	end
end)

local DaShowing = Instance.new("TextButton",EdgelordGui)
DaShowing.Size = UDim2.new(0.02, 0, 0.58, 0)
DaShowing.Position = UDim2.new(0.978, 0, 0.05, 0)
DaShowing.BackgroundColor3 = Color3.new(0, 0, 0)
DaShowing.Text = ">"
DaShowing.TextSize = 25
DaShowing.TextColor3 = Color3.new(255, 255, 255)
DaShowing.Font = Enum.Font.SourceSans
DaShowing.Transparency = 0.4
DaShowing.Visible = false
AddCorner(DaShowing, 5)
DaShowing.MouseButton1Click:Connect(function()
	if DaShowing.Text == ">" then
		DaShowing.Text = "<"
		EAbilityButton.Visible = false
		TAbilityButton.Visible = false
		FAbilityButton.Visible = false
		TelekineticOnTap.Visible = false
		SlapstickMode.Visible = false
	else
		DaShowing.Text = ">"
		EAbilityButton.Visible = true
		TAbilityButton.Visible = true
		FAbilityButton.Visible = true
		TelekineticOnTap.Visible = true
		SlapstickMode.Visible = true
	end
end)


local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

if not game.CoreGui:FindFirstChild("Notification Maker") then
    local screenGui = Instance.new("ScreenGui", game.CoreGui)
    screenGui.Name = "Notification Maker"
end
local screenGui = game.CoreGui:FindFirstChild("Notification Maker")
if not screenGui:FindFirstChild("notificationCenter") then
    local notificationCenter = Instance.new("Frame")
    notificationCenter.Size = UDim2.new(0.2, 0, 1, 0)
    notificationCenter.Position = UDim2.new(0.8, 0, 0, 0)
    notificationCenter.BackgroundTransparency = 1
    notificationCenter.Parent = screenGui
    notificationCenter.Name = "notificationCenter"
end
local notificationCenter = screenGui:FindFirstChild("notificationCenter")

local notifications = {}
local function updateNotificationPositions()
    for i, notification in ipairs(notifications) do
        local targetPos = UDim2.new(1, -(100 * i + 10 * (i - 1)) - 10, 0.65, 0)
        TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = targetPos}):Play()
    end
end

local function AddCorner(instance, radius)
    local corner = Instance.new("UICorner", instance)
    corner.CornerRadius = UDim.new(0, radius)
    return corner
end

local function AddStroke(instance, thickness)
	local Stroke = Instance.new("UIStroke", instance)
	Stroke.Color = Color3.new(0, 0, 0)
	Stroke.Thickness = thickness
	return Stroke
end

local function createCooldown(Notify)
    if Notify.Fill == nil then Notify.Fill = 0 end
    
    local notification = Instance.new("Frame", notificationCenter)
    notification.Size = UDim2.new(0, 100, 0, 50)
    notification.Position = UDim2.new(1, 10, 0.65, 0)
    notification.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    notification.BorderColor3 = Color3.fromRGB(30, 30, 30)
    notification.BorderSizePixel = 2
    notification.Active = true
    table.insert(notifications, 1, notification)
    AddCorner(notification, 5)
    AddStroke(notification, 2)
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0.5, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Text = Notify.Title
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 14
    titleLabel.TextXAlignment = Enum.TextXAlignment.Center
    titleLabel.Parent = notification
    
    local timeFrame = Instance.new("Frame") 
    timeFrame.Size = UDim2.new(0.9, 0, 0.35, 0)
    timeFrame.Position = UDim2.new(0.05, 0, 0.5, 0)
    timeFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
    timeFrame.BorderSizePixel = 0
    timeFrame.Parent = notification
    AddCorner(timeFrame, 5)
    local timeBar = Instance.new("Frame")
    timeBar.BackgroundColor3 = Color3.new(1, 1, 1)
    timeBar.BorderSizePixel = 0
    timeBar.Parent = timeFrame
    AddCorner(timeBar, 5)
    
    local showTween = TweenService:Create(notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 0)})
    showTween:Play()
    updateNotificationPositions()

    local startTime = tick()
    local cooldownEnded = false
    RunService.RenderStepped:Connect(function()
        if not cooldownEnded then
            local elapsedTime = tick() - startTime
            if elapsedTime < Notify.Time then
                timeBar.Size = UDim2.new(1 - (elapsedTime / Notify.Time), 0, 1, 0)
            else
                timeBar.Size = UDim2.new(0, 0, 1, 0)
                cooldownEnded = true
				
                if Notify.Fill > 0 then
                    local fillTime = startTime + Notify.Time
                    RunService.RenderStepped:Connect(function()
		                local fillElapsedTime = tick() - fillTime
		                if fillElapsedTime < Notify.Fill then
		                    timeBar.Size = UDim2.new((fillElapsedTime / Notify.Fill), 0, 1, 0)
		                end
		            end)
                end
            end
        end
    end)
    
    local function endCooldown()
        if notification then
            table.remove(notifications, table.find(notifications, notification))
            cooldownEnded = true
            local hideTween = TweenService:Create(notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(1, 10, 0.65, 0)})
            hideTween:Play()
            hideTween.Completed:Connect(function()
                notification:Destroy()
                updateNotificationPositions()
            end)
        end
    end
    
    delay(Notify.Time + Notify.Fill, function()
        endCooldown()
    end)
    
    return notification 
end

--[[Create Animation/Animation Controller]]--
local function ReplaceAnim(Name, Id)
	for i,v in pairs(game.Players.LocalPlayer.Character.Animate:GetChildren()) do
		if v.Name == Name then
			for i,g in pairs(v:GetChildren()) do
				g.AnimationId = "rbxassetid://" .. Id
			end
		end
	end
end

if game.ReplicatedStorage:FindFirstChild("TheForceAnim") == nil then
	local EdgeAnim = Instance.new("Animation")
	EdgeAnim.AnimationId = "rbxassetid://16102717448"
	EdgeAnim.Parent = game.ReplicatedStorage
	EdgeAnim.Name = "TheForceAnim"
	return EdgeAnim
end

local function PauseAnim(Anim)
    local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
    local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
    for _, v in pairs(ActiveTracks) do
        if v.Animation.AnimationId == "rbxassetid://"..Anim then
            v:AdjustSpeed(0)
        end
    end
end

local function StopAnim(Anim)
    local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
    local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
    for _, v in pairs(ActiveTracks) do
        if v.Animation.AnimationId == "rbxassetid://"..Anim then
            v:Stop()
        end
    end
end

--[[Camera]]--
local function ShakeScreen(shakeTime, shakeIntensity)
    local originalRotation = workspace.CurrentCamera.CFrame
    local function Shake()
        local shakeX = (math.random() - 0.5) * 2
        local shakeY = (math.random() - 0.5) * 2
        local shakeRotation = CFrame.Angles(shakeIntensity * shakeX, shakeIntensity * shakeY, 0)
        workspace.CurrentCamera.CFrame = originalRotation * shakeRotation
    end
    local elapsedTime = 0
    while elapsedTime < shakeTime do
        Shake()
        wait(0.01)
        elapsedTime = elapsedTime + 0.01
    end
    workspace.CurrentCamera.CFrame = originalRotation
end

local tweens = {
    {Property = "FieldOfView", Goal = 70},
    {Property = "FieldOfView", Goal = 450},
    {Property = "FieldOfView", Goal = 80}
}

local function startTween(index)
    if index <= #tweens then
        local properties = {
            [tweens[index].Property] = tweens[index].Goal
        }
        local tween = game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), properties)
        tween:Play()
        tween.Completed:Connect(function()
            startTween(index + 1)
        end)
    end
end

--[[Hightlight]]--
local function Highlight(plr)
	local Highlight = Instance.new("Highlight", EdgelordGui)
    Highlight.Name = plr.Name
    Highlight.DepthMode = "AlwaysOnTop"
    Highlight.FillTransparency = 1
    Highlight.OutlineColor = Color3.new(1,1,1)
    Highlight.OutlineTransparency = 0
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end
end
--[[Equip edgelord+ Ability]]--
local function edgelordGlove()
	game.Players.LocalPlayer.leaderstats.Glove.Value = "edgelord"
	ReplaceAnim("idle", 16163355836)
    ReplaceAnim("walk", 16163350920)
    createSound(game.Players.LocalPlayer.Character.HumanoidRootPart,9133844756, 5)
    spawn(function()
	    repeat task.wait(1.5)
		    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("rbxassetid://9133844756") then
			    createSound(game.Players.LocalPlayer.Character.HumanoidRootPart,9133844756, 10)
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v.Name == "rbxassetid://9133844756" and v:IsA("Sound") then
						if Soundstopped == true then
						    v.Volume = 0
						else
						    v.Volume = .5
						end
					end
				end
		    end
	    until game.Players.LocalPlayer.Character == nil or game.Players.LocalPlayer.Character.Humanoid.Health == 0
    end)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
	startTween(1)
	if table.find({Enum.Platform.IOS, Enum.Platform.Android}, game:GetService("UserInputService"):GetPlatform()) then 
		 wait();
		print("The script found you are using mobile device, enabled mobile gui!")
		EAbilityButton.Visible = true
		TAbilityButton.Visible = true
		FAbilityButton.Visible = true
		TelekineticOnTap.Visible = true
		SlapstickMode.Visible = true
		DaShowing.Visible = true
	else
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Keybind: E:Ability, T:Teleport, F:Music Toggle, Q:Slapstick mode toggle", Duration = 5})
	end
	local ModelEffect = game:GetObjects("rbxassetid://14949130713")[1]
	if ModelEffect and edgelordsetting.HideClientVFX == false then
		Highlight(game.Players.LocalPlayer)
		for i,v in pairs(ModelEffect.HumanoidRootPart:GetChildren()) do
			if v.ClassName == "ParticleEmitter" then
				for i,p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if p:IsA("Part") then
						v:Clone().Parent = p
					end
				end
			end
		end
	end
	ModelEffect:Destroy()
end

local CanBeTelekinetic = true
local lastClickTime = 0
local TelekineticCooldown = 1.4
local function EClicked()
    if CanBeTelekinetic then return end
    if tick() - lastClickTime < TelekineticCooldown then
        return
    end
    CanBeTelekinetic = true
    createSound(game.Players.LocalPlayer.Character.HumanoidRootPart,858508159, 40)
	createCooldown({Title = "THE FORCE", Time = TelekineticCooldown - .1})
    for i,v in pairs(game.Players:GetChildren()) do
		StopAnim(16102717448)
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.TheForceAnim):Play()
        if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
            if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") then
                if v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("stevebody") == nil then
                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                    if ToolRemote and Slapstick == false then
	                    if Magnitude <= 40 then
							if OGlove ~= "Boxer" then
		                        ToolSlap(v.Character:WaitForChild("HumanoidRootPart"), true)
	                    	else
	                            game.ReplicatedStorage.Events.Boxing:FireServer(v, false)
	                        end
	                    end
					else
						game:GetService("ReplicatedStorage").slapstick:FireServer("runeffect")
						game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
						game:GetService("ReplicatedStorage").slapstick:FireServer("dash")
						break
					end
                end
            end
        end
    end
    if ToolSlap then
		for _, c in pairs(workspace:GetChildren()) do
			if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
				local Magnitude2 = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - c.HumanoidRootPart.Position).Magnitude
				if Magnitude2 <= math.huge then
					if OGlove == "Boxer" then ToolSlap(c, false) else ToolSlap(c:WaitForChild("HumanoidRootPart"), true) end
				end
			end
		end
	end
    lastClickTime = tick()
    CanBeTelekinetic = false
end

local TeleportForPc = false
local Teleport = false
local TeleportPE = false
local function TClicked()
    if Teleport then 
        return 
    end
    Teleport = true
    TeleportPE = true
end


local function FClicked()
	if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then return end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v.Name == "rbxassetid://9133844756" and v:IsA("Sound") then
			if v.Volume == .5 then
			    v.Volume = 0
				Soundstopped = true
			else
			    v.Volume = .5
				Soundstopped = false
			end
		else
	    	if v:IsA("ParticleEmitter") and edgelordsetting.HideClientVFX == false then
		    	v.Enabled = not v.Enabled
    		end
        end
	end
end

--[[OnDead]]--
local PlayerDeadConnection
local function PlayerDead()
	if CanStopEdgelord == false then return end
	print("stopped")
	if game.CoreGui:FindFirstChild("Notification Maker") then
		game.CoreGui:FindFirstChild("Notification Maker"):Destroy()
	end
	if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui") then
		fireclickdetector(GloveStands[OGlove].ClickDetector)
		game.Players.LocalPlayer.leaderstats.Glove.Value = OGlove
	    CanBeTelekinetic = true
	    Teleport = false
	    TeleportPE = false
	    TeleportForPc = false
	    TouchToTelekinetic = true
		EdgelordGui:Destroy()
		game.Workspace.Camera.FieldOfView = 70
	end
	if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui") ~= nil then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui"):Destroy()
	end
	if game.Workspace:FindFirstChild("SafeSpotFlatPart") ~= nil then
		game.Workspace:FindFirstChild("SafeSpotFlatPart"):Destroy()
	end
	if PlayerDeadConnection then 
        PlayerDeadConnection:Disconnect()
    end
end

PlayerDeadConnection = game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    PlayerDead()
end)
--[[function connect]]--
game:GetService("UserInputService").InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch and TeleportPE then
		local Teleportpos = game.Players.LocalPlayer:GetMouse().Hit+Vector3.new(0,2.5,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Teleportpos.X,Teleportpos.Y,Teleportpos.Z)
		Teleport = false
		TeleportPE = false
	end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    if not TouchToTelekinetic then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch or input.KeyCode == Enum.KeyCode.E then
        EClicked()
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        FClicked()
    elseif input.KeyCode == Enum.KeyCode.Q then
	    if not ToolRemote then 
		    game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode are locked because your glove isn't supported slap aura", Duration = 3})
		    return 
	    end
	    if Slapstick == false then
		    Slapstick = true
			game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode enabled", Duration = 1})
	    else
		    Slapstick = false
			game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode disabled", Duration = 1})
	    end
    elseif input.KeyCode == Enum.KeyCode.T and TeleportForPc then
		local Teleportpos = game.Players.LocalPlayer:GetMouse().Hit+Vector3.new(0,2.5,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Teleportpos.X,Teleportpos.Y,Teleportpos.Z)
    end
end)
EAbilityButtonReal.MouseButton1Click:Connect(EClicked)
TAbilityButtonReal.MouseButton1Click:Connect(TClicked)
FAbilityButtonReal.MouseButton1Click:Connect(FClicked)
--[[Others]]--
local gui = Instance.new("ScreenGui", game.CoreGui)

local EffectUI = Instance.new("Frame",gui)
EffectUI.Size = UDim2.new(0.3, 0, 0.3, 0)
EffectUI.Position = UDim2.new(0.34, 0, -0.2, 0)
EffectUI.BackgroundColor3 = Color3.new(1, 1, 1)
EffectUI.BorderColor3 = Color3.new(0, 0, 0)
EffectUI.BorderSizePixel = 1
EffectUI.Active = false

local PhaseEffect = Instance.new("ImageButton", EffectUI)
PhaseEffect.Size = UDim2.new(0.28, 0, 0.48, 0)
PhaseEffect.Position = UDim2.new(0.05, 0, 0.42, 0)
PhaseEffect.BackgroundColor3 = Color3.new(0, 0, 0)
PhaseEffect.BorderColor3 = Color3.new(0, 0, 0)
PhaseEffect.BorderSizePixel = 1
PhaseEffect.Image = "rbxthumb://type=Asset&id=13780996974&w=150&h=150"
PhaseEffect.MouseButton1Click:Connect(function()
	local OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
	EffectUI.Visible = false
    fireclickdetector(GloveStands.Phase.ClickDetector)
    wait(0.5)
    if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Phase" then
	    game.StarterGui:SetCore("SendNotification", {Title = "ERROR!", Text = "You don't have Phase glove", Duration = 2})
		EffectUI.Visible = true
		fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
	else
	    wait(0.3)
	    game:GetService("ReplicatedStorage").PhaseA:FireServer()
	    fireclickdetector(GloveStands.Diamond.ClickDetector)
		game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
	    wait(6.4)
	    game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
	    game:GetService("ReplicatedStorage").Ghostinvisibilitydeactivated:FireServer()
	    EffectUI.Visible = true
	    fireclickdetector(GloveStands[OGlove].ClickDetector)
	end
end)



local KineticEffect = Instance.new("ImageButton", EffectUI)
KineticEffect.Size = UDim2.new(0.28, 0, 0.48, 0)
KineticEffect.Position = UDim2.new(0.36, 0, 0.42, 0)
KineticEffect.BackgroundColor3 = Color3.new(0, 0, 0)
KineticEffect.BorderColor3 = Color3.new(0, 0, 0)
KineticEffect.BorderSizePixel = 1
KineticEffect.Image = "rbxthumb://type=Asset&id=858523025&w=150&h=150"
KineticEffect.MouseButton1Click:Connect(function()
	local OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
	EffectUI.Visible = false
	fireclickdetector(GloveStands.Kinetic.ClickDetector)
	wait(0.5)
	if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Kinetic" then
		game.StarterGui:SetCore("SendNotification", {Title = "ERROR!", Text = "You don't have Kinetic glove to get effect", Duration = 2})
		EffectUI.Visible = true
		fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
	else
		for i = 1, 100 do
			game:GetService("ReplicatedStorage").SelfKnockback:FireServer(unpack({[1] = {["Direction"] = Vector3.new(-0, 0.5, -0),["Force"] = 0}}))
			wait(0.01)
		end
		EffectUI.Visible = true
	    fireclickdetector(GloveStands[OGlove].ClickDetector)
	end
end)



local StartUsing = Instance.new("TextButton", EffectUI)
StartUsing.Size = UDim2.new(0.28, 0, 0.48, 0)
StartUsing.Position = UDim2.new(0.67, 0, 0.42, 0)
StartUsing.BackgroundColor3 = Color3.new(0, 0, 0)
StartUsing.BorderColor3 = Color3.new(0, 0, 0)
StartUsing.BorderSizePixel = 1
StartUsing.Text = "Equip Edgelord"
StartUsing.TextScaled = true
StartUsing.TextColor3 = Color3.new(255, 255, 255)
StartUsing.Font = Enum.Font.SourceSansBold
StartUsing.MouseButton1Click:Connect(function()
	OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
    gui:Destroy()
	if ToolRemote then 
	    edgelordGlove()
		TeleportForPc = false
		CanBeTelekinetic = false
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Error!", Text = OGlove.." glove are not supported", Duration = 2})
		edgelordGlove()
		TeleportForPc = false
		CanBeTelekinetic = false
	end
end)
