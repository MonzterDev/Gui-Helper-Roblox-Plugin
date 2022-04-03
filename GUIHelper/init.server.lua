local Gui = require(script.Gui.GuiFrontend)
local GuiBackend = require(script.Gui.GuiBackend)
local Settings = require(script.Utils.Settings)
local Features = require(script.Features)

local toolbar = plugin:CreateToolbar("Gui Helper")
local toolbarButton = toolbar:CreateButton("Open Gui", "Ease the creation of Gui creation with some quality of life features!", "rbxassetid://9267153000")
toolbarButton.ClickableWhenViewportHidden = true

local widgetInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, true, true, 200,	300, 150, 150)
local widget = plugin:CreateDockWidgetPluginGui("Gui Helper", widgetInfo)
widget.Title = "Gui Helper"

Gui.Frame.Parent = widget

toolbarButton.Click:Connect(function()
    widget.Enabled = not widget.Enabled
end)

Settings.LoadData()

-- ContextActionService:BindAction("Copy", copyProperties(), false, Enum.KeyCode.LeftControl, Enum.KeyCode.C)
-- ContextActionService:BindAction("Paste", pasteProperties(), false, Enum.KeyCode.LeftControl, Enum.KeyCode.V)