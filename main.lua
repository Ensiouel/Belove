local Belove = require( "belove" )
local TextureManager = Belove.TextureManager

local Vector = require ( "belove.libraries.Vector")

local texture = TextureManager:loadTexture( "test.png", "idle" )

local player1 = Belove.ECS.Entity( "Enemy" )
local transform = player1:addComponent( Belove.ECS.Components.Transform )
local imageRenderer = player1:addComponent( Belove.ECS.Components.ImageRenderer )

imageRenderer:setImage(TextureManager:getTexture("idle"):getImage("idle_0"))

function love.load()

end

function love.update(dt)
    player1:updateComponents(dt)
end

function love.draw()
    player1:drawComponents()
end