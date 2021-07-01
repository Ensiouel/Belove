local self_path       = (...)     .. "."
local common_path     = self_path .. "common" .. "."
local management_path = self_path .. "management" .. "."
local ecs_path        = self_path .. "ecs" .. "."

local TextureManager  = require( management_path .. "TextureManager" )
local SceneManager    = require( management_path .. "SceneManager" )

-- =============================================================================
-- Belove
-- =============================================================================
Belove = {}

Belove.TextureManager = TextureManager()
Belove.SceneManager   = SceneManager()

Belove.BQuad    = require( common_path .. "BQuad" )
Belove.BTexture = require( common_path .. "BTexture" )
Belove.BImage   = require( common_path .. "BImage" )
Belove.ECS      = require( ecs_path    .. "ECS" )