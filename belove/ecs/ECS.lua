local self_path = (...):match('^.+[%.\\/]')
local components_path = self_path .. "Components" .. "."

local ECS = {
    Component = require( self_path .. "Component" ),
    Entity    = require( self_path .. "Entity" )
}

ECS.Components = {
    Transform     = require( components_path .. "Transform" ),
    ImageRenderer = require( components_path .. "ImageRenderer" )
}

return ECS