local Class = require( "belove.libraries.Class" )

-- =============================================================================
-- BImage
-- =============================================================================
local BImage = Class( "BImage" )
function BImage:load( name, bTexture, bQuad )
    self.name     = name     --< string
    self.bTexture = bTexture --< BTexture
    self.bQuad    = bQuad    --< BQuad
end

return BImage