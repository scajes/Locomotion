def bye(numbers)
	list = []
	numbers.each do |number|
	number < 10 ? list << "Smaller" : list << number
	end
	list
end

p bye([2, 4, 6, 10, 20, 40, 76]) == ["Smaller", "Smaller", "Smaller", 10, 20, 40, 76]