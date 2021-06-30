local Class = require( "belove.libraries.Class" )

local self_path = (...):match("^.+[%.\\/]")

local BImage = require ( self_path .. "." .. "BImage")
local BQuad  = require ( self_path .. "." .. "BQuad")
local Vector = require ( "belove.libraries.Vector")
local utils  = require ( "belove.utils")

local lg = love.graphics
local lf = love.filesystem

-- =============================================================================
-- BTexture
-- =============================================================================
local BTexture = Class( "BTexture" )
function BTexture:load( filename, name, imageMode, filterMode, wrapMode )
    self.name       = name or filename:match( "^[^.]*" ) --< string
    self.texture    = nil                        --< Image
    self.imageMode  = imageMode  or "single"     --< multiple ~ single
    self.filterMode = filterMode or "nearest"    --< linear   ~ nearest
    self.wrapMode   = wrapMode   or "clamp"      --< clamp    ~ repeat
    self.bImage     = {}                         --< [BImage]

    if self:loadTexture( filename ) == false then
        return nil
    end

    self.texture:setWrap(self.wrapMode)
    self.texture:setFilter(self.filterMode)

    local quad  = lg.newQuad( 0, 0, self.texture:getWidth(), self.texture:getHeight(), self.texture:getDimensions() )
    local pivot = Vector(0.5, 0.5 )
    local bQuad = BQuad( quad, pivot )

    self:addBImage( bQuad )
end

function BTexture:setImageMode(imageMode)
    self.imageMode = imageMode or self.imageMode
end

function BTexture:loadTexture( filename )
    local info = lf.getInfo( filename, "file" )
    if info == nil then
        return false
    end

    self.texture = lg.newImage( filename )
    return true
end

function BTexture:addBImage( bQuad )
    assert(bQuad:type("BQuad"), "Type not base on BQuad!")
    local bImage = BImage( self.name .. "_" .. #self.bImage, self, bQuad )
    self.bImage[bImage.name] = bImage
end

function BTexture:getImage( name )
    return self.bImage[name]
end

function BTexture:sliceByCellSize( size, offset, padding )
    if imageMode == "single" then
        return nil
    end
    self.bImage = {}
    local textureWidth, textureHeight = self.texture:getDimensions()
end

function BTexture:sliceByCellCount( dimension, offset, padding )
    if imageMode == "single" then
        return nil
    end
    self.bImage = {}
    local textureWidth, textureHeight = self.texture:getDimensions()
end

return BTexture