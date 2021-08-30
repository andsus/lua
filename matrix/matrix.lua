local function Matrix(s)
  local matrix = {}

  for line in (s..'\n'):gmatch '.-\n' do
    local row = {}
    for num_str in line:gmatch '%d+' do
      table.insert(row, tonumber(num_str))
    end
    table.insert(matrix, row)
  end

  return {
    row = function(index) return matrix[index] end,

    column = function(index)
      local col = {}
      for i=1, #matrix do 
        table.insert(col, matrix[i][index]) 
      end
      return col
    end
  }
end

return Matrix