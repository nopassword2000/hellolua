function ioRead()
    file = io.open("C:\\Users\\Administrator\\Desktop\\user.sql","r")
    coment = file:read("*a")
    coroutine.yield(coment)
    io.close(file)
end


co = coroutine.create(ioRead)
local stats,coment = coroutine.resume(co)
print(coment)