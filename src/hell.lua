local _M = {}

function fun_add(v1, v2)
    print("this is funcadd")
    return v1 + v2
end


function func_sub(v1, v2)
    print("this is funcsub")
    return v1 -v2
end

local function split(szFullString, szSeparator)
    local nFindStartIndex = 1
    local nSplitIndex = 1
    local nSplitArray = {}
    while true do
        local nFindLastIndex,v = string.find(szFullString, szSeparator, nFindStartIndex)
        if  nFindLastIndex == nil
        then
            if nFindStartIndex > string.len(szFullString) then
                    break
            else
                   nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
                   break
            end
        end

        if nFindLastIndex - 1 == 0 then
            nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex)
            nFindStartIndex = nFindLastIndex + string.len(szSeparator)
            nSplitIndex = nSplitIndex + 1
        else
            nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex -1)
            nFindStartIndex = nFindLastIndex + string.len(szSeparator)
            nSplitIndex = nSplitIndex + 1
        end

    end
    return nSplitArray

--[[local sub_str_tab = {};

while (true) do
    local pos = string.find(str, split_char);
    if (not pos) then
        local size_t = table.getn(sub_str_tab)
        table.insert(sub_str_tab,size_t+1,str);
        break;
    end

    local sub_str = string.sub(str, 1, pos - 1);
    local size_t = table.getn(sub_str_tab)
    table.insert(sub_str_tab,size_t+1,sub_str);
    local t = string.len(str);
    str = string.sub(str, pos + 1, t);
end
return sub_str_tab;]]
end

_M.fun_add = fun_add
_M.func_sub= func_sub
_M.split = split

return _M