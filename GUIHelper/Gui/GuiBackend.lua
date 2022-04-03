local SelectionService = game:GetService("Selection")

local UserSettingsScript = script.Parent.Parent.UserData.Settings

local Gui = require(script.Parent.GuiFrontend)
local Features = require(script.Parent.Parent.Features)
local Helper = require(script.Parent.Parent.Utils.Helper)

local plugin = script:FindFirstAncestorWhichIsA("Plugin")

local Backend = {}


local helpList = {
    Center = "Sets the AnchorPoint to .5, .5 & Position to .5, 0, .5, 0",
    Copy = "Copies the properties from the selected Object. (Do not select multiple Objects!)",
    Export = "Exports all selected Gui Elements into a Script.",
    OffsetSize = "Converts the Size from Scale to Offset.",
    OffsetPosition = "Converts the Position from Scale to Offset.",
    ScaleSize = "Converts the Size from Offset to Scale.",
    ScalePosition = "Converts the Position from Offset to Scale.",
    Paste = "Replaces the selected Object's properties which are shared with the Object's properties that was copied.",
    Default = "Saves the selected Object's properties as the defeault for whenever this Object type is created.",
}

local function showHelp(helpButton: TextButton)
    local parent: TextButton = helpButton.Parent
    if parent:GetAttribute("Help") == true then
        parent.Text = parent:GetAttribute("Text")
        parent.Font = "GothamBold"
        parent.BackgroundColor3 = Color3.new(0.7686274647712708,0.8588235378265381,0.9803921580314636)
        helpButton.Text = Gui.Help.Text
        helpButton.BackgroundColor3 = Gui.Help.BackgroundColor3
        parent:SetAttribute("Help", false)
    else
        parent:SetAttribute("Text", parent.Text)
        parent.Text = helpList[parent.Name]
        parent.Font = "Gotham"
        parent.BackgroundColor3 = Color3.new(108, 121, 138)
        helpButton.Text = "X"
        helpButton.BackgroundColor3 = Color3.new(1, 0, 0)
        parent:SetAttribute("Help", true)
    end
end

function Backend.DisplaySettings()
    plugin:OpenScript(UserSettingsScript)
end

function Backend.GenerateHelp()
    for _, descendant in ipairs(Gui.Frame:GetDescendants()) do
        if descendant:IsA("TextButton") and descendant.Name ~= "Settings" and descendant.Name ~= "Help" then
            local clone = Gui.Help:Clone()
            clone.Parent = descendant
            clone.MouseButton1Click:Connect(function()
                showHelp(clone)
            end)
        end
    end
end

local function oneSelectedObjectHasProperty(objects: table, properties: table)
    for _ , object in ipairs(objects) do
        if Helper.HasProperty(object, properties) then
            return true, object
        end
    end
    return false
end

local function displayButtons(selected: table, isGuiObject: boolean)
    local result, objectWithProperty = oneSelectedObjectHasProperty(selected, {"Size", "Position"})
    if isGuiObject and result == true then
        if objectWithProperty.Size.Y.Offset > 0 or objectWithProperty.Size.X.Offset > 0 then
            Gui.OffsetSize.Visible = false
            Gui.ScaleSize.Visible = true
        else
            Gui.OffsetSize.Visible = true
            Gui.ScaleSize.Visible = false
        end
        if objectWithProperty.Position.Y.Offset > 0 or objectWithProperty.Position.X.Offset > 0 then
            Gui.OffsetPosition.Visible = false
            Gui.ScalePosition.Visible = true
        else
            Gui.OffsetPosition.Visible = true
            Gui.ScalePosition.Visible = false
        end
    else
        Gui.OffsetSize.Visible = false
        Gui.OffsetPosition.Visible = false
        Gui.ScaleSize.Visible = false
        Gui.ScalePosition.Visible = false
    end
    Gui.Center.Visible = oneSelectedObjectHasProperty(selected, {"AnchorPoint", "Position"})
    Gui.Paste.Visible = if Backend.PropertyClipboard ~= "" and isGuiObject == true then true else false
    Gui.GeneralTitle.Text = if isGuiObject == false then "Select a Gui object!" else "General"
    Gui.Default.Visible = isGuiObject
end


Backend.GenerateHelp()

Gui.ScaleSize.MouseButton1Click:Connect(function()
    Features.OffsetToScale("Size")
end)
Gui.ScalePosition.MouseButton1Click:Connect(function()
    Features.OffsetToScale("Position")
end)
Gui.OffsetSize.MouseButton1Click:Connect(function()
    Features.ScaleToOffset("Size")
end)
Gui.OffsetPosition.MouseButton1Click:Connect(function()
    Features.ScaleToOffset("Position")
end)
Gui.Center.MouseButton1Click:Connect(Features.CenterElements)
Gui.Export.MouseButton1Click:Connect(Features.ExportGui)
Gui.Copy.MouseButton1Click:Connect(Features.CopyProperties)
Gui.Paste.MouseButton1Click:Connect(Features.PasteProperties)
Gui.Settings.MouseButton1Click:Connect(Backend.DisplaySettings)
Gui.Default.MouseButton1Click:Connect(Features.SetAsDefault)

SelectionService.SelectionChanged:Connect(function()
    local selected = SelectionService:Get()
    if #selected > 0 then
        displayButtons(selected, Helper.IsAGuiObject(selected))
    end
end)

return Backend