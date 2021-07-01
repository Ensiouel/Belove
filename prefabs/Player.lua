local Entity = require ("belove.ecs.Entity")

-- =============================================================================
-- Player
-- =============================================================================
local Player = Entity:inherit( "Player" )
function Player:load()

    self.transform     = self:addComponent("Transform")
    self.imageRenderer = self:addComponent("ImageRenderer")

    self.imageRenderer:setImage(Belove.TextureManager:getTexture("idle"):getImage("idle_0"))
end

function Player:update( dt )

end

function Player:draw()

end

return Player