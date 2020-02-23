--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2020/2/22 0022
-- Time: 22:12
-- To change this template use File | Settings | File Templates.
--


local function slipstr()
    local str = "/ab/b/c/d/a.jsp"
    local arry = str.gmatch(str,"/")
    for word in arry do

        print(word)
    end
end


local function sub()

     ss = "abcdefg"
     substr = string.sub(ss, 3, 4)
     print(substr)
end

local function point()
    ss = "abc.td.f"
    k,v = string.find(ss,'d1',1,true)
    print(k.."----"..v.."----")
end

local function split(szFullString, szSeparator)
    local nFindStartIndex = 1
    local nSplitIndex = 1
    local nSplitArray = {}

    if #szFullString == 1 and szFullString == szSeparator then
        return nSplitArray
    end

    while true do
        local nFindLastIndex,_ = string.find(szFullString, szSeparator, nFindStartIndex,true)
        if  nFindLastIndex == nil
        then
            nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
            break
        end

        nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex -1)
        nFindStartIndex = nFindLastIndex + string.len(szSeparator)
        nSplitIndex = nSplitIndex + 1
    end
    return nSplitArray
end

--sub()

local arry = split("aa",".", true)
print(table.getn(arry))
if getmetatable(arry) == nil then
print("-==-0-00--0-0-0-0")
end
for k,v in pairs(arry) do
    print("-k--" ..k.. "--v--" ..v .. "----")
end
