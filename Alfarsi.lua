--// Visual UI Library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/Zz5bSUsL"))()

local Window = Library:CreateWindow("Alfarsi", Vector2.new(490, 550), Enum.KeyCode.RightControl)

local Tab = Window:CreateTab("Main")
Tab:CreateLabel("Programmed by: unknown")
Tab:CreateLabel("Discord: 3kp_")

local Other = Window:CreateTab("Other")
Other:CreateButton("Launch Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
