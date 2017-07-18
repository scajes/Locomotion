def array_index(list, index)
  global_array = []
  list.each do |str|
    index.times do |num|
      global_array << [str, num + 1]
    end
  end
  global_array
end

p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]