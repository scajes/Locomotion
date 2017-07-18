def array_index(list, index)
  global_array = []
  list.each do |str|
    start_index = 1
      global_array << [str, (start_index..index).to_a]
    end
  global_array
end

p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]