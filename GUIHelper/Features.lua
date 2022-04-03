local Workspace = game:GetService("Workspace")
local StarterGui = game:GetService("StarterGui")
local SelectionService = game:GetService("Selection")

local UserSettingsModule = require(script.Parent.UserData.Settings)
local DefaultGuiObjects = require(script.Parent.DefaultData.GuiObjects)
local Helper = require(script.Parent.Utils.Helper)
local Serialization = require(script.Parent.Utils.Serialization)
local Gui = require(script.Parent.Gui.GuiFrontend)
local Settings = require(script.Parent.Utils.Settings)

local plugin = script:FindFirstAncestorWhichIsA("Plugin")

local Features = {}

function Features.OffsetToScale(mode: "Size"| "Position")
    local ViewPortSize = workspace.Camera.ViewportSize
    local objects = SelectionService:Get()
    for _, object: GuiObject in ipairs(objects) do
        if Helper.HasProperty(object, {mode}) then
            if mode == "Size" then
                local size = object.Size
                local sizeScaleX, sizeScaleY = size.X.Offset / ViewPortSize.X, size.Y.Offset / ViewPortSize.Y
                Helper.ModifyProperty(object, {Size = UDim2.fromScale(sizeScaleX, sizeScaleY)})
            else
                local position = object.Position
                local positionScaleX, positionScaleY = position.X.Offset / ViewPortSize.X, position.Y.Offset / ViewPortSize.Y
                Helper.ModifyProperty(object, {Position = UDim2.fromScale(positionScaleX, positionScaleY)})
            end
        end
    end
    if mode == "Size" then
        Gui.OffsetSize.Visible = true
        Gui.ScaleSize.Visible = false
    else
        Gui.OffsetPosition.Visible = true
        Gui.ScalePosition.Visible = false
    end
end

function Features.ScaleToOffset(mode: "Size"| "Position")
    local ViewPortSize = workspace.Camera.ViewportSize
    local objects = SelectionService:Get()
    for _, object: GuiObject in ipairs(objects) do
        if Helper.HasProperty(object, {mode}) then
            if mode == "Size" then
                local size = object.Size
                local sizeOffsetX, sizeOffsetY = size.X.Scale * ViewPortSize.X, size.Y.Scale * ViewPortSize.Y
                Helper.ModifyProperty(object, {Size = UDim2.fromOffset(sizeOffsetX, sizeOffsetY)})
            else
                local position = object.Position
                local positionOffsetX, positionOffsetY = position.X.Scale * ViewPortSize.X, position.Y.Scale * ViewPortSize.Y
                Helper.ModifyProperty(object, {Position = UDim2.fromOffset(positionOffsetX, positionOffsetY)})
            end
        end
    end
    if mode == "Size" then
        Gui.OffsetSize.Visible = false
        Gui.ScaleSize.Visible = true
    else
        Gui.OffsetPosition.Visible = false
        Gui.ScalePosition.Visible = false
    end
end


function Features.CenterElements()
    local objects = SelectionService:Get()
    for _, object in ipairs(objects) do
        Helper.ModifyProperty(object, {AnchorPoint = Vector2.new(.5,.5), Position = UDim2.fromScale(.5,.5)})
    end
end

function Features.ExportGui()
    local script = script.Parent.UserData.Exported
    local selectedObjects = SelectionService:Get()
    local exportedObjects = {}
    local duplicates = 1
    for _, object in ipairs(selectedObjects) do
        if exportedObjects[object.Name] then
            object.Name = if object.Parent.Name then object.Parent.Name..object.Name else object.Name..tostring(duplicates)
            duplicates += 1
        end
        exportedObjects[object.Name] = {}
        exportedObjects[object.Name].ClassName = object.ClassName
        for property, value in pairs(DefaultGuiObjects[object.ClassName]) do
            if value ~= object[property] or property == "Name" then
                exportedObjects[object.Name][property] = object[property]
            end
        end
    end

    local loops = 0
    local combined = ""
    for _, object in ipairs(selectedObjects) do
        local propertyTable = exportedObjects[object.Name]
        if loops >= 1 then
            combined = combined.."\n\n"
        end
        combined = combined.."local "..propertyTable.Name.." = Instance.new(\""..propertyTable.ClassName.."\","..tostring(propertyTable.Parent)..")"
        propertyTable.ClassName = nil

        for property, value in pairs(propertyTable) do
            value = Serialization.serialize(value)
            combined = combined.."\n"..propertyTable.Name.."."..property.." = "..tostring(value)
        end
        loops += 1
    end
    script.Source = combined
    plugin:OpenScript(script)
end

Features.PropertyClipboard = ""
function Features.CopyProperties()
    Features.PropertyClipboard = {}
    local selected = SelectionService:Get()
    if DefaultGuiObjects[selected[1].ClassName] then
        for property, _ in pairs(DefaultGuiObjects[selected[1].ClassName]) do
            Features.PropertyClipboard[property] = selected[1][property]
        end
        Gui.Paste.Visible = true
    end
end

function Features.PasteProperties()
    local selected = SelectionService:Get()
    Helper.ModifyProperty(selected[1], Features.PropertyClipboard)
end

local function hasDefaults(object: Instance, defaults: table)
    for property, value in pairs(defaults) do
        if value ~= "" and typeof(value) ~= "Color3" and typeof(value) ~= "NumberSequence" and object[property] ~= value then
            return false
        end
    end
    return true
end

function Features.SetAsDefault()
    local selectedObjects = SelectionService:Get()
    for _, object: GuiObject in ipairs(selectedObjects) do
        if Settings.CachedSettings[object.ClassName] then
            for property, _ in pairs(Settings.CachedSettings[object.ClassName]) do
                Settings.CachedSettings[object.ClassName][property] = tostring(object[property])
            end
            print(object.Name.."s properties set as the default for all "..object.ClassName.."!")
        end
    end
    Settings.SaveData(true)
end

local function setDefaults(object: Instance)
    if hasDefaults(object, DefaultGuiObjects[object.ClassName]) then
        for property, _ in pairs(Settings.CachedSettings[object.ClassName]) do
            if property ~= "Parent" and property ~= "RootLocalizationTable" and Settings.CachedSettings[object.ClassName][property] ~= nil then
                print(Settings.CachedSettings[object.ClassName][property])
                object[property] = Serialization.Deserialize(object[property], Settings.CachedSettings[object.ClassName][property])
            end
        end
    end
end

function Features.SetDefaultProperties(descendant: Instance)
    local isGuiObject = Helper.IsAGuiObject({descendant})
    if isGuiObject == true and plugin:GetSetting("Update_New_"..descendant.ClassName) == true then
        setDefaults(descendant)
    end
end

Workspace.DescendantAdded:Connect(Features.SetDefaultProperties)
StarterGui.DescendantAdded:Connect(Features.SetDefaultProperties)

return Features