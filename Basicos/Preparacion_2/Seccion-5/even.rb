numbers = [2, 4, 7, 10, 23, 34, 45, 42]
even = Proc.new { |number| number % 2 == 0 ? "Even" : number }

#test
p numbers.map(&even)