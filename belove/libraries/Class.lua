local Class = {}
function Class:new(name)
    local сlass = {}
    сlass.__type      = name
    сlass.__inherited = {}
    table.insert( сlass.__inherited, name )
    setmetatable(сlass, self)
    self.__index = self; return сlass
end

function Class:inherit( name, ... )
    local parent    = self( ... )
    local prototype = Class( name )
    table.insert(prototype.__inherited, parent:type() )
    table.insert(prototype.__inherited, name )
    return setmetatable(prototype, {__index = parent, __call = parent.__call})
end

function Class:type() --> string
    return self.__type
end

function Class:typeOf( name ) --> bool
    for _, type in pairs(self.__inherited) do
        if type == name then
            return true
        end
    end
    return false
end

function Class.__call(self, ...)
    local obj = {}
    setmetatable(obj, {__index = self})
    if obj.load then
        obj:load( ... )
    end
	return obj
end

setmetatable(Class, {__call = function(Class, ... ) return Class:new( ... ) end})

return Class