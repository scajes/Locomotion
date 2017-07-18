def greater_than(a, b)
	a > b
	a ? "#{b} is greater than #{a}" : "#{a} is greater than #{b}"
end

p greater_than(56, 70) == "70 is greater than 56"
p greater_than(56, 58) == "58 is greater than 56"
p greater_than(15, 20) == "20 is greater than 15"