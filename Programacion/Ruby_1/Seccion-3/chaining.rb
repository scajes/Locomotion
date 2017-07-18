def shout_backwards(string)
  string.upcase.reverse + "!!!"
end

puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"


def squared_primes(array)
  array.select! {|x| x.odd?}
  array.map {|p| p*p}
end

puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]