a = {}
function a.test(self,v1, v2)
    print("a.test",self)
    print(v1,v2)
end

a.test(a,1,2)
a:test(1,2)
b = {}
function b:test(v1, v2)
    print("b.test",self)
    print(v1,v2)
end

b.test(3,4)
b:test(3,4)


local base = {}
function base:test()
    print("base:test", self)
end

function base:age()
    print("base age", self)
end

function base:new(instance)
    if not instance then
        instance = {}
    end

    setmetatable(instance,{__index=self})
    return instance;
end


local b = base:new()
print("b addr is ",b)
b:test()

local c= base:new()
print("c addr is ",c)
c:test()

local instant = {}
local d = base:new(instant)
local e = base:new(instant)
d:test()
e:test()

local extends = base:new()
function extends:age()

    print("this is extends age", self)
end

local ae = extends:new();
ae:age();
ae.test(ae)