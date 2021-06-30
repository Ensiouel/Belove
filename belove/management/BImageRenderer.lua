local Class = require( "belove.libraries.Class" )

-- =============================================================================
-- BImageRenderer
-- =============================================================================
local BImageRenderer = Class( "BImageRenderer" )
function BImageRenderer:load(bImage)
    self.bImage = bImage
    self.flip = { x = false, y = false }
end

function BImageRenderer:draw(x)
    love.graphics.draw(self.bImage.bTexture.texture, self.bImage.bQuad.quad, x, 0, 0, 1, 1)
end

return BImageRenderer