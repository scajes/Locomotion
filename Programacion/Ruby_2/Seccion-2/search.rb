def linear_search(number, array)
	for index in 0..array.size
		if array[index] == number
			return p index
		end
	end
	return p nil
end

random_numbers = [4, 3, 2, 20, 5, 64, 78, 11, 43]
linear_search(20, random_numbers)
# => 3
linear_search(29, random_numbers)
# => nil


def global_linear_search(letter, array)
	index_array = []
	for index in 0..array.size
		if array[index] == letter then index_array << index
		end
	end
	return index_array
end

arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]