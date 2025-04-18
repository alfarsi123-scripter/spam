-- Load the Visual UI Library
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua'))()  --  [oai_citation_attribution:0‡GitHub](https://github.com/VisualRoblox/Roblox/blob/main/UI-Libraries/Visual%20UI%20Library/Example.lua?utm_source=chatgpt.com)

-- Create the main window
local Window = Library:CreateWindow(
    'Alfarsi',                 -- Window title
    'Roblox',                  -- Game title
    'Alfarsi',                 -- Splash screen text
    'rbxassetid://10618928818',-- Splash screen icon
    false,                     -- Disable themes
    'AlfarsiConfigs',          -- Config folder name
    'Default'                  -- Default theme name
)

-- Main tab
local MainTab = Window:CreateTab(
    'Main',                    -- Tab title
    true,                      -- Visible by default
    'rbxassetid://3926305904', -- Tab icon
    Vector2.new(524, 44),      -- Tab RectOffset
    Vector2.new(36, 36)        -- Tab RectSize
)
local MainSection = MainTab:CreateSection('Info')
MainSection:CreateLabel('Programmed by: unknown')
MainSection:CreateLabel('Discord: 3kp_')

-- Other tab
local OtherTab = Window:CreateTab(
    'Other',                   -- Tab title
    true,                      -- Visible by default
    'rbxassetid://3926305904', -- Tab icon
    Vector2.new(524, 44),      -- Tab RectOffset
    Vector2.new(36, 36)        -- Tab RectSize
)
local OtherSection = OtherTab:CreateSection('Scripts')
OtherSection:CreateButton('Launch Infinite Yield', function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
