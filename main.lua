require( "belove" )

local Player = require( "prefabs.Player" )

Belove.TextureManager:loadTexture( "test.png", "idle" )

local player1 = Player()

function love.load()

end

function love.update(dt)
    player1:updateComponents(dt)
end

function love.draw()
    player1:drawComponents()
end