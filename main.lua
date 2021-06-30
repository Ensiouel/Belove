local Belove = require( "belove" )
local Vector = require ( "belove.libraries.Vector")

function love.load()
    bTexture = Belove.BTextureManager:loadTexture( "test.png" )
    bTexture:setImageMode("multiple")
end

function love.update(dt)

end

function love.draw()

end