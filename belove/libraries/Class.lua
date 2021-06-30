local Class = {}
function Class:new(name)
    local сlass = {}
    сlass.__type = name
    setmetatable(сlass, self)
    self.__index = self; return сlass
end

function Class:inherit( name, ... )
    local parent = self(...)
    local prototype = Class(self.__type.."."..name)
    return setmetatable(prototype, {__index = parent, __call = parent.__call})
end

function Class.__call(self, ...)
    local obj = {}
    setmetatable(obj, {__index = self})
    if obj.load then
        obj:load(...)
    end
	return obj
end

setmetatable(Class, {__call = function(Class, ... ) return Class:new( ... ) end})

return Class