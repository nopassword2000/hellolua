local utils=require('hell')
local cjson = require("cjson")

local json_object = "{\"name\":\"Jiang\",\"addr\":\"BeiJing\",\"age\":24,\"tel\":\"1569989xxxx\",\"email\":\"1569989xxxx@126.com\"}"
local lua_object = cjson.decode(json_object)
print(type(lua_object))

print(lua_object["name"])


local sb = "/aaa.js"
local sbarry = {}
for i = 1, string.len(sb) do
     local sbs = string.sub(sb,i,-string.len(sb) + i -1)
     print( i .. "--------" .. sbs .. "---------------")
     sbarry[i] = sbs
end

for i=1, table.getn(sbarry) do
    print(sbarry[i])
end
local arry=utils.split('/aaa.js', "/")

if arry == nil then
    return;
end
print(table.getn(arry) .."----0---")
--print(arry[1].."---1----")
--print(arry[2].."---2----")
for i = 1, table.getn(arry) do
    print(arry[i] .."-------" .. i .. "------------")
end


