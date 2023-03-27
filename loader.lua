getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
   Name = "A hub of all time™",
   LoadingTitle = "Certainly a hub.",
   LoadingSubtitle = "by Furri",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "AHOAT™"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "A hub",
      Subtitle = "Key System",
      Note = "THE KEY IS HUB",
      FileName = "hubkey",
      SaveKey = false,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "hub"
   }
})

local CharTab = Window:CreateTab("Character", 4483362458) -- Title, Image

local Slider = CharTab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 250},
   Increment = 2,
   Suffix = "Walkspeed",
   CurrentValue = 16,
   Flag = "Walkerr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = CharTab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 1000},
   Increment = 2,
   Suffix = "Jump power",
   CurrentValue = 50,
   Flag = "Jumperr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
   end,
})

local Slider = CharTab:CreateSlider({
   Name = "FOV",
   Range = {0, 120},
   Increment = 2,
   Suffix = "FOV",
   CurrentValue = 50,
   Flag = "fielderr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
	game.Workspace.CurrentCamera.FieldOfView = Value
   end,
})

--SCRIPTS

local ScriptsTab = Window:CreateTab("Scripts", 4483362458) -- Title, Image
--FEFLIP
local Button = ScriptsTab:CreateButton({
   Name = "FeFlip",
   Callback = function()
 	loadstring(game:HttpGet("https://pastebin.com/raw/crPcd0vq",true))()
   end,
})
--AntiGrav
local Button = ScriptsTab:CreateButton({
   Name = "Walk on walls",
   Callback = function()
 	loadstring(game:HttpGet("https://raw.githubusercontent.com/thunderfurry/a_hub_of_all_time/main/scripts/wallwalk.lua",true))()
   end,
})
--IY
local Button = ScriptsTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
 	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
   end,
})

--HUBS
local HubsTab = Window:CreateTab("Hubs", 4483362458) -- Title, Image
local Button = HubsTab:CreateButton({
   Name = "DomainX",
   Callback = function()
 	loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
   end,
})
local Button = HubsTab:CreateButton({
   Name = "UniversalFE",
   Callback = function()
 	loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
   end,
})

--GAMES
local GamesTab = Window:CreateTab("Games", 4483362458) -- Title, Image
local Button = GamesTab:CreateButton({
   Name = "Doors [TerminalVibes]",
   Callback = function()
 	loadstring(game:HttpGet('https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/loadstring.lua',true))()
   end,
})

local UtilTab = Window:CreateTab("Utility", 4483362458) -- Title, Image
local Button = UtilTab:CreateButton({
   Name = "Freecam",
   Callback = function()
 	loadstring(game:HttpGet('https://pastebin.com/raw/yJ51HKy9',true))()
   end,
})
--CAMERASWITCH
local CameraTab = Window:CreateTab("Camera Switcher")
local Label = CameraTab:CreateLabel("WARNING: THIS IS ALL IRRIVERSIBLE!!!")
local Label = CameraTab:CreateLabel("RUN THESE AT YOUR OWN RISK!")
--Auto Realistic Camera
local Button = CameraTab:CreateButton({
   Name = "Character Head Camera ",
   Callback = function()
 	game:GetService("RunService").RenderStepped:Connect(function() workspace.CurrentCamera.CFrame = game.Players.LocalPlayer.Character.Head.CFrame end)
   end,
})

local Paragraph = CameraTab:CreateParagraph({Title = "Customizable Camera", Content = "Do game.Workspace.WHATEVERPARTHERE.CFrame"})
local textb = "okay"
local Input = CameraTab:CreateInput({
   Name = "Path",
   PlaceholderText = "path",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
	game:GetService("RunService").RenderStepped:Connect(function() workspace.CurrentCamera.CFrame = tostring(Text..".CFrame") end)
   end,
})

--CONTROLS
local ControlTab = Window:CreateTab("Controls")
local Paragraph = ControlTab:CreateParagraph({Title = "FeFlip", Content = "Z or X to flip, C to jump when in air."})
local Paragraph = ControlTab:CreateParagraph({Title = "FreeCam", Content = "Shift + P to use."})
local Paragraph = ControlTab:CreateParagraph({Title = "Doors Terminalvibes", Content = "RControl to use."})
