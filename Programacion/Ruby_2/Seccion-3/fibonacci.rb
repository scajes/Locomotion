def fibonacci_iterative(fib)
  (2..fib).reduce([0, 1]) { |fibonacci| fibonacci << fibonacci.last(2).reduce(:+) }[fib]
end

def fibonacci_recursive(fib)
	fib < 2 ? fib : fibonacci_recursive(fib - 1) + fibonacci_recursive(fib - 2)
end

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5

require 'benchmark'

	num = 20
	Benchmark.bm do |x|
  	x.report("fibonacci_iterative")  { (1..1000).each { fibonacci_iterative(num) } }
  	x.report("fibonacci_recursive") { (1..1000).each { fibonacci_recursive(num) } }
end