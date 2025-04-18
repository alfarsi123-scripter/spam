--// Alfarsi Centered Static UI

-- Wait until the game is loaded
if not game:IsLoaded() then game.Loaded:Wait() end

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AlfarsiUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Main window frame
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 300, 0, 200)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)   -- centered
frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Rounded corners
local frameCorner = Instance.new("UICorner", frame)
frameCorner.CornerRadius = UDim.new(0, 8)

-- Header bar
local header = Instance.new("Frame", frame)
header.Size = UDim2.new(1, 0, 0, 30)
header.Position = UDim2.new(0, 0, 0, 0)
header.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
local headerCorner = Instance.new("UICorner", header)
headerCorner.CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel", header)
title.Size = UDim2.new(1, -10, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Alfarsi"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextXAlignment = Enum.TextXAlignment.Left

-- Tab buttons container
local tabFrame = Instance.new("Frame", frame)
tabFrame.Size = UDim2.new(1, 0, 0, 25)
tabFrame.Position = UDim2.new(0, 0, 0, 30)
tabFrame.BackgroundTransparency = 1

local function makeTab(name, idx)
    local btn = Instance.new("TextButton", tabFrame)
    btn.Name = name .. "Btn"
    btn.Size = UDim2.new(0.5, idx==2 and -2 or -2, 1, 0)
    btn.Position = UDim2.new((idx-1)*0.5, idx==2 and 4 or 0, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    btn.BorderSizePixel = 0
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    local cr = Instance.new("UICorner", btn)
    cr.CornerRadius = UDim.new(0, 4)
    return btn
end

local mainBtn  = makeTab("Main",  1)
local otherBtn = makeTab("Other", 2)

-- Content containers
local mainContent = Instance.new("Frame", frame)
mainContent.Name = "MainContent"
mainContent.Size = UDim2.new(1, -10, 1, -65)
mainContent.Position = UDim2.new(0, 5, 0, 60)
mainContent.BackgroundTransparency = 1

local otherContent = mainContent:Clone()
otherContent.Name = "OtherContent"
otherContent.Parent = frame

-- Populate Main tab
local lbl1 = Instance.new("TextLabel", mainContent)
lbl1.Size = UDim2.new(1, -10, 0, 20)
lbl1.Position = UDim2.new(0, 5, 0, 0)
lbl1.BackgroundTransparency = 1
lbl1.Text = "Programmed by: unknown"
lbl1.TextColor3 = Color3.fromRGB(255, 255, 255)
lbl1.Font = Enum.Font.Gotham
lbl1.TextSize = 14
lbl1.TextXAlignment = Enum.TextXAlignment.Left

local lbl2 = lbl1:Clone()
lbl2.Position = UDim2.new(0, 5, 0, 25)
lbl2.Text = "Discord: 3kp_"
lbl2.Parent = mainContent

-- Populate Other tab
local infyBtn = Instance.new("TextButton", otherContent)
infyBtn.Size = UDim2.new(1, -10, 0, 30)
infyBtn.Position = UDim2.new(0, 5, 0, 0)
infyBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
infyBtn.BorderSizePixel = 0
infyBtn.Text = "Launch Infinite Yield"
infyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
infyBtn.Font = Enum.Font.Gotham
infyBtn.TextSize = 14
local cr2 = Instance.new("UICorner", infyBtn)
cr2.CornerRadius = UDim.new(0, 4)
infyBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

-- Tab-switching logic
local function showTab(name)
    mainContent.Visible  = (name == "Main")
    otherContent.Visible = (name == "Other")
    mainBtn.BackgroundColor3  = name == "Main"  and Color3.fromRGB(60, 60, 60) or Color3.fromRGB(35, 35, 35)
    otherBtn.BackgroundColor3 = name == "Other" and Color3.fromRGB(60, 60, 60) or Color3.fromRGB(35, 35, 35)
end

mainBtn.MouseButton1Click:Connect(function() showTab("Main") end)
otherBtn.MouseButton1Click:Connect(function() showTab("Other") end)

-- Initialize on Main tab
showTab("Main")
