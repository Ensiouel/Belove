local Class = require( "belove.libraries.Class" )

-- =============================================================================
-- SceneManager
-- =============================================================================
local SceneManager = Class( "SceneManager" )
function SceneManager:load()
    self.scenes = {}
    self.activeScene = nil
end

function SceneManager:setActiveScene( name )
    self.activeScene = self:getScene( name )
end

function SceneManager:addScene( scene )
    assert( scene:typeOf("Scene"), "Type not base on Scene!" )
    if self.scenes[scene.name] == nil then
        self.scenes[scene.name] = scene
    end
end

function SceneManager:getScene( name )
    if self.scenes[name] ~= nil then
        return self.scenes[name]
    end
end

function SceneManager:update( dt )
end

function SceneManager:draw()
end

return SceneManager