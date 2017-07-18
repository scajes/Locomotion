def long_strings(str)
  str.find_all {|word| word.length > 4}
end

p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]