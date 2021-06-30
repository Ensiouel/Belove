local Component = require ("belove.ecs.Component")

local Vector = require ( "belove.libraries.Vector")

-- =============================================================================
-- ImageRenderer
-- =============================================================================
local ImageRenderer = Component:inherit( "ImageRenderer" )
function ImageRenderer:load()
    self.bImage    = nil
    self.flip      = { x = false, y = false }
    self.transform = nil
end

function ImageRenderer:init()
    self.transform = self.entity:getComponent("Transform")
    return true
end

function ImageRenderer:setImage( image )
    assert(image:type("BImage"), "Type not base on BImage!")
    self.bImage = image
end

function ImageRenderer:update( dt )
    
end

function ImageRenderer:draw()
    love.graphics.draw(self.bImage.bTexture.texture, self.bImage.bQuad.quad, 0, 0)
end

return ImageRenderer