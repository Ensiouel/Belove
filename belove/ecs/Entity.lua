local Class = require( "belove.libraries.Class" )

local self_path = (...):match("^.+[%.\\/]")

-- =============================================================================
-- Entity
-- =============================================================================
local Entity = Class( "Entity" )
function Entity:load()
    self.name       = nil
    self.components = {}
end

function Entity:init()
    return true
end

function Entity:addComponent( Component, ... ) --> Component
    assert(Component.__type == "Component", "Type not base on component!")
    local component = Component( ... )
    component.entity = self
    if component:init() and self:hasComponent(component) == false then
        self.components[component.name] = component
        return self.components[component.name]
    end
    return nil
end

function Entity:getComponent(component)

end

function Entity:hasComponent(component) --> bool
    assert(component.__type == "Component", "Type not base on component!")
    return self.components[component.name] ~= nil
end

return Entity