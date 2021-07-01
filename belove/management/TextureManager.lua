local Class = require( "belove.libraries.Class" )

local self_path = (...):match('^.+[%.\\/]')

local BTexture = require ( "belove" .. "." .. "common" .. "." .. "BTexture")

-- =============================================================================
-- TextureManager
-- =============================================================================
local TextureManager = Class( "TextureManager" )
function TextureManager:load()
    self.data = {}
end

function TextureManager:loadTexture( filename, ... )
    local hexFilename = love.data.encode("string", "hex",  love.data.hash("sha1", filename))

    if self.data[hexFilename] then
        return self.data[hexFilename]
    else
        local bTexture = BTexture( filename, ... )
        self.data[hexFilename] = bTexture
        return self.data[hexFilename]
    end
end

function TextureManager:getTexture( name )
    local hexName = love.data.encode("string", "hex",  love.data.hash("sha1", name))
    if self.data[hexName] then
        return self.data[hexName]
    end

    for _, texture in pairs(self.data) do
        if texture.name == name then
            return texture
        end
    end
    return nil
end

return TextureManager