local DefaultGuiObjects = require(script.Parent.Parent.DefaultData.GuiObjects)
local Gui = require(script.Parent.Parent.Gui.GuiFrontend)

local Helper = {}

function Helper.IsAGuiObject(selected: table)
    local result = if DefaultGuiObjects[selected[1].ClassName] then true else false
    for _, button in pairs(Gui) do
        if button:IsA("TextButton") and button.Name ~= "Settings" then
            button.Visible = result
        end
    end
    return result
end

function Helper.HasProperty(object: Instance, properties: table)
    local success, _ = pcall(function()
        for _, property in ipairs(properties) do
            object[property] = object[property]
        end
    end)
    return success
end

function Helper.ModifyProperty(object: Instance, properties: table)
    for property, value  in pairs(properties) do
        pcall(function()
            object[property] = value
        end)
    end
end


return Helper