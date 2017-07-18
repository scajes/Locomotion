def fibonacci(n)
  # si n = 1, se imprime 1
  if n == 1
    1
  # si n = 2, de igual manera se imprime 1 ya que
  # la serie de Fibonacci empienza con dos números 1
  elsif n == 2
    1
  # si n > 2, entonces queremos que se sumen los dos
  # valores anteriores
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(10) == 55