getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
   Name = "A hub of all time™",
   LoadingTitle = "Certainly a hub.",
   LoadingSubtitle = "by Furri and Terio",
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

local Tab = Window:CreateTab("General", 4483362458) -- Title, Image

local Label = Tab:CreateLabel("Character Modifiers")
local Slider = Tab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 100},
   Increment = 2,
   Suffix = "Walkspeed",
   CurrentValue = 16,
   Flag = "Walkerr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 100},
   Increment = 2,
   Suffix = "Jump power",
   CurrentValue = 50,
   Flag = "Jumperr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "FOV",
   Range = {0, 100},
   Increment = 2,
   Suffix = "FOV",
   CurrentValue = 50,
   Flag = "fielderr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
	game.Workspace.CurrentCamera.FieldOfView = Value
   end,
})

local Label = Tab:CreateLabel("Scripts")
local Button = Tab:CreateButton({
   Name = "Walk on walls",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/thunderfurry/a_hub_of_all_time/main/scripts/wallwalk.lua?token=GHSAT0AAAAAAB7DC6Y6OCSNIJZWZONWAOS2ZA6IKMA"))()
   end,
})


local Label = Tab:CreateLabel("Other Hubs")

local Label = Tab:CreateLabel("Notes")
