-- Load Visual UI Library
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aurora106-dev/spam/refs/heads/main/visualhub"))()

-- Create draggable toggle button
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "Alfarsi_ToggleUI"
ScreenGui.ResetOnSpawn = false

local DragButton = Instance.new("TextButton")
DragButton.Parent = ScreenGui
DragButton.Size = UDim2.new(0, 100, 0, 30)
DragButton.Position = UDim2.new(0.5, -50, 0, 100)
DragButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
DragButton.BackgroundTransparency = 0.5
DragButton.Text = "Toggle UI"
DragButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DragButton.Font = Enum.Font.SourceSans
DragButton.TextSize = 18
DragButton.Active = true
DragButton.Draggable = true

-- Toggle logic
local isOpen = true
DragButton.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    for _, v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "VisualHub" then
            v.Enabled = isOpen
        end
    end
end)

-- Set UI Title and Credits (if library allows it)
pcall(function()
    library:SetTitle("Alfarsi")
    library:Notify("Programmer: unknown | Discord: 3kp_")
end)
