function Bogo_sort(array)
  local function shuffle()
    for i = 1, #array, 1 do
      local j = math.random(#array)
      array[i], array[j] = array[j], array[i]
    end
  end

  local function is_sorted()
    for i = 2, #array, 1 do
      if array[i-1] >= array[i] then
        return false
      end
    end
    return true
  end

  while not is_sorted() do
    shuffle()
  end
end

local array = {0, 3, 2, 4, 10, 1, 7, 9}
Bogo_sort(array)
print(table.concat(array, ", "))
