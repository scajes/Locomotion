=begin
Script: Binary Search
ARG = number & array
WHILE lowest array index < highest array index
middle array index = highest index - lowest index  / 2
IF array index middle = number
RETURN middle
ELSIF array index middle < number
lowest index = middle + 1
ELSE
highest index = middle - 1
ENDIF
END
=end


def binary_search(number, array)
	low = 0
	high = array.size-1

	while (low <= high)
		middle = low + ((high-low) / 2)

		if array[middle] == number
			return middle
		elsif array[middle] < number
			low = middle + 1
		else
			high = middle - 1
		end
	end
	return nil
end

p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == nil
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4