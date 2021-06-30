local self_path       = (...)     .. "."
local common_path     = self_path .. "common" .. "."
local management_path = self_path .. "management" .. "."
local ecs_path        = self_path .. "ecs" .. "."

local TextureManager  = require( management_path .. "TextureManager" )
local SceneManager    = require( management_path .. "SceneManager" )

local Belove = {
    BQuad           = require( common_path .. "BQuad" ),
    BTexture        = require( common_path .. "BTexture" ),
    BImage          = require( common_path .. "BImage" ),
    ECS             = require( ecs_path    .. "ECS" )
}

Belove.TextureManager = TextureManager()
Belove.SceneManager    = SceneManager()

return Belove