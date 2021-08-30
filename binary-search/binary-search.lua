return function(array, target)
  local left, right, pivot = 1, #array, 0

  while (left <= right) do
    pivot = (left + right) // 2
    if (target == array[pivot]) then
      return pivot
    end

    if (target > array[pivot]) then
      left = pivot + 1
    else
      right = pivot - 1
    end

  end
  return -1
end
