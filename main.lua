require( "belove" )

Belove.TextureManager:loadTexture( "test.png", "idle" )

local player1 = Belove.ECS.Entity( "Enemy" )
local transform = player1:addComponent( "Transform" )
local imageRenderer = player1:addComponent( "ImageRenderer" )

imageRenderer:setImage(Belove.TextureManager:getTexture("idle"):getImage("idle_0"))

function love.load()

end

function love.update(dt)
    player1:updateComponents(dt)
end

function love.draw()
    player1:drawComponents()
end