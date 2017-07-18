def dudeney_number?(dudeney)
=begin
  Como solo esos números son parte de los números
  de Dudeney, los puse dentro de un array
  y use include?(dudeney), ese parametro siendo el
  que me piden
=end

  [1, 512, 4913, 5832, 17576, 19683].include?(dudeney)
end

p dudeney_number?(1) == true