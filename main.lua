require( "belove" )

local Player = require( "prefabs.Player" )
local scene = Belove.Scene( "Main" )

Belove.SceneManager:addScene( scene )
Belove.SceneManager:setActiveScene( "Main" )

Belove.TextureManager:loadTexture( "test.png", "idle" )

local player1 = Player( "Ensiouel" )

scene:addEntity( player1 )

function love.load()
   
end

function love.update(dt)
    scene:update( dt )
end

function love.draw()
    scene:draw()
end