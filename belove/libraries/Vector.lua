local Vector = {}
function Vector:new(x, y)
    local vector = {}
    vector.x = x or 0
    vector.y = y or 0
    setmetatable(vector, self)
    self.__index = self; return vector
end

function Vector:getValue() --> number, number
    return self.x, self.y
end

function Vector:getLength() --> number
    return math.sqrt(self.x * self.x + self.y * self.y)
end

function Vector.normalize(vec) --> Vector
    local l = vec:getLength()
    local t
    if l > 0 then
        t = 1.0 / l
        vec.x = vec.x * t
        vec.y = vec.y * t
    else
        vec.x = 0
        vec.y = 0
    end
    return vec
end

function Vector:normalize() --> Vector
    local l = self:getLength()
    local t
    if l > 0 then
        t = 1.0 / l
        self.x = self.x * t
        self.y = self.y * t
    else
        self.x = 0
        self.y = 0
    end
    return self
end

function Vector.dot(vec1, vec2) --> number
    return vec1.x * vec2.x + vec1.y * vec2.y
end

function Vector:dot(vec) --> number
    return self.x * vec.x + self.y * vec.y
end

function Vector:__tostring() --> string
    return self.x.." "..self.y
end

function Vector:__add(vec) --> Vector
    if type(vec) == "table" then
        return Vector(self.x + vec.x, self.y + vec.y)
    else
        return Vector(self.x + vec, self.y + vec)
    end
end

function Vector:__sub(vec) --> Vector
    if type(vec) == "table" then
        return Vector(self.x - vec.x, self.y - vec.y)
    else
        return Vector(self.x - vec, self.y - vec)
    end
end

function Vector:__mul(vec) --> Vector
    if type(vec) == "table" then
        return Vector(self.x * vec.x, self.y * vec.y)
    else
        return Vector(self.x * vec, self.y * vec)
    end
end

function Vector:__div(vec) --> Vector
    if type(vec) == "table" then
        return Vector(self.x / vec.x, self.y / vec.y)
    else
        return Vector(self.x / vec, self.y / vec)
    end
end

function Vector:__eq(vec) --> bool
    return self.x == vec.x and self.y == vec.y
end

return setmetatable(Vector, {__call = function(self, ...) return Vector:new(...) end})