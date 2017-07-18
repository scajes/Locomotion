def factorial(num)
  if num == 0
    1
  else
    # Método recursivo que crea un bucle desde el
    # número hasta 1
    num * factorial(num - 1)
  end
end

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720