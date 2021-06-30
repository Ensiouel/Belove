local Component = require ("belove.ecs.Component")

local Vector = require ( "belove.libraries.Vector")

-- =============================================================================
-- ImageRenderer
-- =============================================================================
local ImageRenderer = Component:inherit( "ImageRenderer" )
function ImageRenderer:load()
    self.transform = nil
end

function ImageRenderer:init()
    return true
end

function ImageRenderer:update(dt)

end

function ImageRenderer:draw()
end

return ImageRenderer