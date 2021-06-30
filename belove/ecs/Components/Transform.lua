local Component = require ("belove.ecs.Component")

local Transform = Component:inherit("Transform")
function Transform:load()

end

function Transform:init()
    return true
end

return Transform