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

function TextureManager:loadTexture( filename, name, imageMode, filterMode, wrapMode )
    local hexName = love.data.encode("string", "hex",  love.data.hash("sha1", filename))

    if self.data[hexName] then
        return self.data[hexName]
    else
        local bTexture = BTexture( filename, name, imageMode, filterMode, wrapMode )
        self.data[hexName] = bTexture
        return self.data[hexName]
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