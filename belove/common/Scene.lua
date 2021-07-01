local Class = require( "belove.libraries.Class" )

-- =============================================================================
-- Scene
-- =============================================================================
local Scene = Class( "Scene" )
function Scene:load( name )
    self.entities = {}
    self.loaded   = false
    self.name     = name
end

function Scene:init()
    return true
end

function Scene:addEntity( entity )
    assert( entity:typeOf("Entity"), "Type not base on Entity!" )
    if self.entities[entity.name] == nil then
        self.entities[entity.name] = entity
    end
end

function Scene:getEntity(name)
    if self.entities[name] ~= nil then
        return self.entities[name]
    end
    return nil
end

function Scene:update( dt )
    for _, entity in pairs( self.entities ) do
        entity:update( dt )
        entity:updateComponents( dt )
    end
end

function Scene:draw()
    for _, entity in pairs(self.entities) do
        entity:draw()
        entity:drawComponents()
    end
end

function Scene:isLoaded() --> bool
    return self.loaded
end

return Scene