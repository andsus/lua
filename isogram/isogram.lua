return function(words)
  local characterMap = {}

  for character in words:lower():gmatch('%a') do
    if characterMap[character] then
      return false
    end

    characterMap[character] = true
  end

  return true
end