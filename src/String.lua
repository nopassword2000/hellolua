--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2020/2/22 0022
-- Time: 22:12
-- To change this template use File | Settings | File Templates.
--


local str = "/ab/b/c/d/a.jsp"
local arry = str.gmatch(str,"/")
for word in arry do

    print(word)
end


