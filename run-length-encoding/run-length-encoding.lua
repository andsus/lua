return {
  encode = function(decoded)
    for character in decoded:gmatch(".") do
      decoded = decoded:gsub(character:rep(2) .. "+", function(match)
          return tostring(#match) .. character 
      end)
    end
    return decoded
  end,

  decode = function(encoded)
    return encoded:gsub("(%d+)(.)", function(length, character)
      return character:rep(length)
    end)
  end
}
