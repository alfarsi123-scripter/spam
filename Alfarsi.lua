-- Load the Visual UI Library
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua'))()  --  [oai_citation_attribution:0‡GitHub](https://github.com/VisualRoblox/Roblox/blob/main/UI-Libraries/Visual%20UI%20Library/Example.lua?utm_source=chatgpt.com)

-- Create the main window with the "Discord" theme
local Window = Library:CreateWindow(
    'Alfarsi',                 -- Window title
    'Roblox',                  -- Game title
    'Alfarsi',                 -- Splash/Text on load
    'rbxassetid://10618928818',-- Splash icon
    false,                     -- Disable built‑in theming toggle
    'AlfarsiConfigs',          -- Config folder name
    'Discord'                  -- Default theme name (see list below)  [oai_citation_attribution:1‡GitHub](https://github.com/VisualRoblox/Roblox/blob/main/UI-Libraries/Visual%20UI%20Library/Themes.md)
)

-- (Optional) Change the key that toggles the UI
Window.ToggleKey = Enum.KeyCode.RightControl  -- You can set this to e.g. Enum.KeyCode.RightShift

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
    Vector2.new(524, 44),
    Vector2.new(36, 36)
)
local OtherSection = OtherTab:CreateSection('Scripts')
OtherSection:CreateButton('Launch Infinite Yield', function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
