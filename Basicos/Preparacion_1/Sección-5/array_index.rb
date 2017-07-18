def get_index(list)
  list.map.with_index {|val, index| [val, index]}
end

p get_index([2, 10, 6, 34, 0, 3]) == [[2, 0], [10, 1], [6, 2], [34, 3], [0, 4], [3, 5]]