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

local Label = Tab:CreateLabel("Scripts")

local Label = Tab:CreateLabel("Other Hubs")

local Label = Tab:CreateLabel("Notes")
