
local  hell = require("hell")
local  sval = hell.func_sub(3,1)
print("sval is ".. sval)


print("sva2"..func_sub(3, 1))

for i = 1, 10 do
    if i % 20 == 0 then
        print(i)
    end
end

a = require("mate")
print(a.key1)

array = {"Google", "Runoob"}
for key, value in ipairs(array) do
    print(key, value)
end


print(array[0])