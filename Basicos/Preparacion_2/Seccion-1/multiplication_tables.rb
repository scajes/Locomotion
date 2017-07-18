def multiplication_tables(n)
  puts (1..n).map { |x| (1..10).map { |y| (x * y).to_s.ljust(4) }.join(" ") }
end

p multiplication_tables(5)