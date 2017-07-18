def prime (num)
	require 'prime'
  yield num
end

prime(10) { |num| p Prime.take(num) }