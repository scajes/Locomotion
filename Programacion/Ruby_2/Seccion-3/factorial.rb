def factorial_iterative(number)
	(1..number).inject(:*) || 1
end


def factorial_recursive(number)
	number == 0 ? 1 : number * factorial_recursive(number-1)
end

p factorial_iterative(5)
p factorial_recursive(50)