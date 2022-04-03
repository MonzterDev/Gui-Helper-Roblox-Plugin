local SelectionService = game:GetService("Selection")
local Workspace = game:GetService("Workspace")
local StarterGui = game:GetService("StarterGui")

local UserSettingsScript = script.UserData.Settings

local DefaultGuiObjects = require(script.DefaultData.GuiObjects)
local Gui = require(script.Gui.GuiFrontend)
local GuiBackend = require(script.Gui.GuiBackend)
local UserSettingsModule = require(script.UserData.Settings)
local Settings = require(script.Utils.Settings)
local Features = require(script.Features)
local DefaultUserSettings = require(script.DefaultData.Settings)

local toolbar = plugin:CreateToolbar("Gui Helper")
local newScriptButton = toolbar:CreateButton("Gui Helper", "Open GUI", "rbxassetid://4458901886")
newScriptButton.ClickableWhenViewportHidden = true

local widgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Float,  -- Widget will be initialized in floating panel
	true,   -- Widget will be initially enabled
	true,  -- Don't override the previous enabled state
	200,    -- Default width of the floating window
	300,    -- Default height of the floating window
	150,    -- Minimum width of the floating window
	150     -- Minimum height of the floating window
)
local widget = plugin:CreateDockWidgetPluginGui("Gui Helper", widgetInfo)
widget.Title = "Gui Helper"

Gui.Frame.Parent = widget

newScriptButton.Click:Connect(function()
    widget.Enabled = not widget.Enabled
end)

Settings.LoadData()
-- ContextActionService:BindAction("Copy", copyProperties(), false, Enum.KeyCode.LeftControl, Enum.KeyCode.C)
-- ContextActionService:BindAction("Paste", pasteProperties(), false, Enum.KeyCode.LeftControl, Enum.KeyCode.V)