def fizzbuzz(min_rgn, max_rgn)
  (min_rgn..max_rgn).to_a.map do |num|
    if num % 3 == 0 && num % 5 == 0
      "FizzBuzz"
    elsif num % 5 == 0
      "Buzz"
    elsif num % 3 == 0
      "Fizz"
    else
      num
    end
  end
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]