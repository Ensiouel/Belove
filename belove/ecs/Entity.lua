local Class = require( "belove.libraries.Class" )

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
    assert(Component:type("Component"), "Type not base on Component!")
    local component = Component( ... )
    local component_type = component:type()
    component.entity = self
    if component:init() and self:hasComponent(component) == false then
        self.components[component_type] = component
        return self.components[component_type]
    end
    return nil
end

function Entity:getComponent(Component)
    assert(Component:type("Component"), "Type not base on Component!")
    local component_type = Component:type()
    return self.components[component_type]
end

function Entity:hasComponent(Component) --> bool
    assert(Component:type("Component"), "Type not base on Component!")
    local component_type = Component:type()
    return self.components[component_type] ~= nil
end

function Entity:update(dt)
end

function Entity:draw()
end

function Entity:updateComponents(dt)
    for _, component in pairs(self.components) do
        component:update(dt)
    end
end

function Entity:drawComponents()
    for _, component in pairs(self.components) do
        component:draw()
    end
end

return Entity