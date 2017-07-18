=begin
USING Prime Library
IF var % lowest num Prime = 0
UNTIL % = 0
EACH DIVIDE var per lowest num Prime
PUSH lowest num prime to new array
ENDIF
END
=end

def prime_factors(num)
	require 'prime'
	num.prime_division.flat_map { |factor, exponant| [factor] * exponant }
=begin
	La libreria 'prime' nos permite tener acceso a todos los numeros primos
	El built in method 'prime_division' de la clase Prime nos regresa el primer numero primo en que se pueda dividir el argumento
	y despues su exponante: => prime_factors(12) == [[2, 2], [3, 1]]
	Como estamos en la clase Array usamos el built in method 'flat_map' indicando en el bloque que nos repita el numero primo que divide el argumento
	las veces que dividio el argumento tomando en cuanta el exponante.
=end
end

p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]
p prime_factors(1200) == [2, 2, 2, 2, 3, 5, 5]
p prime_factors(6936) == [2, 2, 2, 3, 17, 17]