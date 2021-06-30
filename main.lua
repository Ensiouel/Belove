local Belove = require( "belove" )
local Vector = require ( "belove.libraries.Vector")

local player1 = Belove.ECS.Entity( "enemy" )
player1:addComponent( Belove.ECS.Components.Transform )

function love.load()
    bTexture = Belove.BTextureManager:loadTexture( "test.png" )
    bTexture:setImageMode("multiple")
end

function love.update(dt)
    player1:updateComponents(dt)
end

function love.draw()
    player1:draw()
end