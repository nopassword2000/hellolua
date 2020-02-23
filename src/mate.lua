
a = {
    key1 = "test1"
}

mate_a = {
    __index = {
        name = "black",
        age = 34,
        sex = 0,
        key1 = "test2"
    }
}

setmetatable(a,mate_a)

print(a.key1)
print(a.name)
print(a.name2)

if a.name2 then
    print("is nil")
end

return a