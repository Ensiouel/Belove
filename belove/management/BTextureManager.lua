local Class = require( "belove.libraries.Class" )

local self_path = (...):match('^.+[%.\\/]')

local BTexture = require ( "belove" .. "." .. "common" .. "." .. "BTexture")

-- =============================================================================
-- BTextureManager
-- =============================================================================
local BTextureManager = Class( "BTextureManager" )
function BTextureManager:load()
    self.data = {}
end

function BTextureManager:loadTexture( filename )
    local hexDigestString = love.data.encode("string", "hex",  love.data.hash("sha1", filename))

    if self.data[hexDigestString] then
        return self.data[hexDigestString]
    else
        local bTexture = BTexture( filename )
        self.data[hexDigestString] = bTexture
        return self.data[hexDigestString]
    end
end

return BTextureManager