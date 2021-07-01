local Entity = require ("belove.ecs.Entity")

-- =============================================================================
-- Player
-- =============================================================================
local Player = Entity:inherit( "Player" )
function Player:load()
    self.transform     = self:addComponent("Transform")
    self.imageRenderer = self:addComponent("ImageRenderer")
end

function Player:update( dt )

end

function Player:draw()

end

return Player