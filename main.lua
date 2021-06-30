local Belove = require( "belove" )
local Vector = require ( "belove.libraries.Vector")

local player = Belove.ECS.Entity()

player:addComponent(Belove.ECS.Components.Transform)

function love.load()
    bTexture = Belove.BTextureManager:loadTexture( "test.png" )
    bTexture:setImageMode("multiple")
end

function love.update(dt)

end

function love.draw()

end