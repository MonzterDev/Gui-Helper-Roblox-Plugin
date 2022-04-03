local Serialize = {}

function Serialize.vector2(vector2: Vector2)
    return "Vector2.new("..vector2.X..","..vector2.Y..")"
end

function Serialize.color3(color3: Color3)
    return "Color3.new("..color3.R..","..color3.G..","..color3.B..")"
end

function Serialize.udim2(udim2: UDim2)
    local test = tostring(udim2):gsub("{", ""):gsub("}", ""):split(",")
    return "UDim2.new("..test[1]..","..test[2]..","..test[3]..","..test[4]..")"
end

function Serialize.string(string: string)
    return "\""..string.."\""
end

function Serialize.serialize(value: any)
    return
    if typeof(value) == "Vector2" then Serialize.vector2(value)
    elseif typeof(value) == "UDim2" then Serialize.udim2(value)
    elseif typeof(value) == "Color3" then Serialize.color3(value)
    elseif typeof(value) == "string" then Serialize.string(value)
    else value
end

function Serialize.Deserialize(property: any, value: string)
    if typeof(property) == "UDim2" then
        local holder = value:gsub("{", ""):gsub("}", ""):split(",")
        return UDim2.new(tonumber(holder[1]),tonumber(holder[2]),tonumber(holder[3]),tonumber(holder[4]))
    elseif typeof(property) == "UDim" then
            local holder = value:split(",")
            return UDim.new(tonumber(holder[1]),tonumber(holder[2]))
    elseif typeof(property) == "Vector2" then
        local holder = value:split(",")
        return Vector2.new(tonumber(holder[1]), tonumber(holder[2]))
    elseif typeof(property) == "EnumItem" or typeof(property) == "Enum" or typeof(property) == "Enums" then
        local holder = value:split(".")
        return holder[3]
    elseif typeof(property) == "Color3" then
        local holder = value:split(",")
        return Color3.new(tonumber(holder[1]), tonumber(holder[2]), tonumber(holder[3]))
    elseif typeof(property) == "NumberSequence" then
        return NumberSequence.new(tonumber(value))
    else
        return value
    end
end

return Serialize