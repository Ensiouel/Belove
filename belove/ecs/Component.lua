local Class = require( "belove.libraries.Class" )

-- =============================================================================
-- Component
-- =============================================================================
local Component = Class( "Component" )
function Component:load()
    self.entity = nil
end

function Component:init() --> bool
    return true
end

function Component:update(dt) --> void
end

function Component:draw() --> void
end

return Component