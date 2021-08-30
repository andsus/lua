local A = ("A"):byte()

local diamond = function (char)
    local size = char:byte() - A
    local rows = {}
    for i = 0, size do
        local ch = string.char(A + i)
        local half = (" "):rep(i) .. ch .. (" "):rep(size-i)
        rows[#rows+1] = half:sub(2):reverse() .. half .. "\n"
    end
    for i = size, 1, -1 do
        rows[#rows+1] = rows[i]
    end
    return table.concat(rows)
end

return diamond