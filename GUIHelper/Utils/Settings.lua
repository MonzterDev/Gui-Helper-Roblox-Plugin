local UserSettingsScript = script.Parent.Parent.UserData.Settings
local UserSettingsModule = require(script.Parent.Parent.UserData.Settings)
local DefaultUserSettings = require(script.Parent.Parent.DefaultData.Settings)
local DefaultGuiObjects = require(script.Parent.Parent.DefaultData.GuiObjects)

local plugin = script:FindFirstAncestorWhichIsA("Plugin")

local Settings = {}

Settings.CachedSettings = {}

function Settings.LoadData()
    task.spawn(function()
        Settings.CachedSettings = {}
        for key, value in pairs(DefaultUserSettings) do
                Settings.CachedSettings[key] = if plugin:GetSetting(key) ~= nil then plugin:GetSetting(key) else value
        end
        for key, value in pairs(DefaultGuiObjects) do
            Settings.CachedSettings[key] = {}
            for property, propertyValue in pairs(value) do
                if propertyValue ~= "" then
                    Settings.CachedSettings[key][property] = if plugin:GetSetting(key.."_"..property) ~= nil and plugin:GetSetting(key.."_"..property) ~= "nil" then plugin:GetSetting(key.."_"..property) else propertyValue
                end
            end
        end
    end)
end

function Settings.SaveData(objects: boolean)
    task.spawn(function()
        if objects == false then
            for setting, settingValue in pairs(DefaultUserSettings) do
                plugin:SetSetting(setting, Settings.CachedSettings[setting])
            end
        else
            for object, properties in pairs(DefaultGuiObjects) do
                for property, propertyValue in pairs(properties) do
                    if propertyValue ~= "" then
                        plugin:SetSetting(object.."_"..property, tostring(Settings.CachedSettings[object][property]))
                    end
                end
            end
        end
    end)
end

function Settings.GenerateSettings()
    local UserSettingsModule = require(script.Parent.Parent.UserData.Settings:Clone())
    local string = "return {"
    for _, table in ipairs(DefaultUserSettings) do
        if UserSettingsModule[table.Name] then
            string = string.."\n    "..table.Name.." = "..tostring(Settings.CachedSettings[table.Name])..","
        end
    end
    string = string.."\n}"
    UserSettingsScript.Source = string
end


UserSettingsScript.Changed:Connect(function(changed)
    if changed == "Source" then
        UserSettingsModule = require(script.Parent.Parent.UserData.Settings:Clone())
        for _, settingArray in ipairs(UserSettingsModule) do
            if Settings.CachedSettings[settingArray.Name] ~= nil and settingArray.Value ~= nil then
                Settings.CachedSettings[settingArray.Name] = settingArray.Value
            end
        end
        Settings.SaveData(false)
    end
end)


return Settings