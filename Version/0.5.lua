

function ttostring(tbl)
   if type(tbl) == "table" then
       local result
       for i, v in ipairs(tbl) do
           result = tostring(v)
           if i < #tbl then
                result = result .. ", "
           end
       end
       result = result
       return result
   else
       return tbl
   end
end



local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
  Name = "Project Echo",
  Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
  LoadingTitle = "Welcome!",
  LoadingSubtitle = "By Echo",
  Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

  DisableRayfieldPrompts = false,
  DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

  ConfigurationSaving = {
     Enabled = true,
     FolderName = nil, -- Create a custom folder for your hub/game
     FileName = "Big Hub"
  },

  Discord = {
     Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
     Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
     RememberJoins = true -- Set this to false to make them join the discord every time they load it up
  },

  KeySystem = false, -- Set this to true to use our key system
  KeySettings = {
     Title = "Untitled",
     Subtitle = "Key System",
     Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
     FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
     SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
     GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
     Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
  }
})

local InfoTab = Window:CreateTab("Info", "Info")
local Paragraph = InfoTab:CreateParagraph({Title = "Info", Content = "Hello! Welcome to the Ultimate Slap Battles script containing gloves and more!"})
local Paragraph = Tab:CreateParagraph({Title = "Version", Content = "Welcome to Version 0.5! - This project took me about 4 hours to get V0.5 set up but enjoy"})

local TeleportTab = Window:CreateTab("Teleport", "Plane")
local Button = TeleportTab:CreateButton({
   Name = "Normal Arena",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Default Arena",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
   -- The function that takes place when the button is pressed
   end,
})

--[[
   local Button = TeleportTab:CreateButton({
      Name = "Button Example",
      Callback = function()
         
      -- The function that takes place when the button is pressed
      end,
   })
]]--

local Button = TeleportTab:CreateButton({
   Name = "Lobby",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Hunter Room",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.BountyHunterRoom.Union.CFrame * CFrame.new(0,5,0)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Brazil",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Slapple",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Plate",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "tournament",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Cannon Island",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Moai",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Island1",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.66747713, -5.06731462, 213.575378, 0.945777893, 2.52095178e-10, 0.324814111, -3.7823856e-08, 1, 1.09357536e-07, -0.324814111, -1.15713661e-07, 0.945777893)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Island2",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.210846, -5.27827597, 4.13719559, -0.0225322824, 1.83683113e-08, -0.999746144, -1.83560154e-08, 1, 1.87866842e-08, 0.999746144, 1.87746618e-08, -0.0225322824)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Island3",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.17191315, -5.14452887, -205.249741, -0.98216176, -3.48867246e-09, -0.188037917, -4.19987778e-09, 1, 3.38382322e-09, 0.188037917, 4.11319823e-09, -0.98216176)
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Cube of Death",
   Callback = function()
      if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame * CFrame.new(0,5,0)
         end
   -- The function that takes place when the button is pressed
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "SafeSpot",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17894.3867, -20.5577297, -3562.97974, 0.999158919, -1.34026186e-08, -0.04100601, 1.42693359e-08, 1, 2.08436735e-08, 0.04100601, -2.14112692e-08, 0.999158919)
   -- The function that takes place when the button is pressed
   end,
})


local BadgeTab = Window:CreateTab("Badges", "Award")
--[[
   local Button = BadgeTab:CreateButton({
      Name = " ",
      Callback = function()
         
      -- The function that takes place when the button is pressed
      end,
   })
]]

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Admin",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AdminGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Alchamist",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AlchemistGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Angler",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AnglerGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Avatar/Hunter",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AvatarAndHunterGloves.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Avatar/Relude",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AvatarAndReludeGloves.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Bind",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/BindGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Bob",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/BobGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Boxer",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/BoxerGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Buddies",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/BuddiesGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Chain",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/ChainGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Clock",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/ClockGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Counter",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/CounterGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Eggler",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/EgglerGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Elude",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/EludeGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Fan",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/FanGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Fish",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/FishGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Frostbite",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/FrostbiteGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Glovel",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/GlovelGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Hexa",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/HexaGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Hitman",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/HitmanGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Hybrid",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/HybridGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Ice Skate",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/IceSkateGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-get Kinetic",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/KineticGlove.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = BadgeTab:CreateButton({
   Name = "Auto-get Slenderman",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/4fVIZ4LM/raw",true))()
      
   -- The function that takes place when the button is pressed
   end,
})

--[[
local HubTab = Window:CreateTab("Hubs", "Github") -- Title, Image



--[[

local Button = HubTab:CreateButton({
   Name = "",
   Callback = function()

   end,
})
]]--





--[[

local MiskTab = Window:CreateTab("Misk", 4483362458) -- Title, Image



local Button = MiskTab:CreateButton({
   Name = "",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
   


local Button = BadgeTab:CreateButton({
   Name = "Auto-Get Slenderman"
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/4fVIZ4LM/raw"))()
   end,
})
   
]]--

local HubTab = Window:CreateTab("Hubs", "Github") -- Title, Image




local Button = HubTab:CreateButton({
   Name = "Slap farmV4",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/SlapFarmGui/Versions/(v4.1).luau",true))()
   end,
})

local Button = HubTab:CreateButton({
   Name = "Vinq",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/vinqDevelops/erwwefqweqewqwe/refs/heads/main/lol.txt'))()
   end,
})
