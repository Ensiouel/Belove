local Class = require( "belove.libraries.Class" )

-- =============================================================================
-- BQuad
-- =============================================================================
local BQuad = Class( "BQuad" )
function BQuad:load( quad, pivot )
    self.quad  = quad  --> Quad
    self.pivot = pivot --> Vector
end

return BQuad