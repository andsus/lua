local Hamming = {}

function Hamming.compute(a,b)
    if #a ~= #b then
        return -1
    end

    local diff = 0
    for i = 1, math.max(#a, #b) do
        if a:sub(i, i) ~= b:sub(i, i) then
            diff = diff + 1
        end
    end
    return diff

end

return Hamming
