# Ejercicio max_letter_frequency_per_word

=begin
def max_letter_frequency_per_word(sentence)
    sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
end
=end

def words_longer_than(array,num)
	array.split.select {|word| word.length > num}
end

=begin
Usamos el método "split" que es parte de la clase "String" que convierte el parametro "array"
en un arreglo y cada espacio produce un nuevo "substring".

Ya que obtenemos un arreglo usando el método split, usamos select que es parte de la clase "Array"
para que el método nos retorne un nuevo arreglo con cada palabra que tenga una longitud
("length" que es parte de varias clases incluyendo "String" e "Array") mayor a la variable "num".

Usando como prueba para la variable "array" el siguiente "String":
"entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía"
y como variable "num" un integer 3, obtenemos:

#=> ["entero", "entrar", "envase", "enviar", "enzima", "equino", "equipo", "erario", "erguir", "eriaza", "eriazo", "erigir", "eringe", "eficientemente", "electroencefalografía"]

Como resultado final obtenemos un arreglo con todos los "substrings" que tienen una longitud
superior a tres letras.
=end


p words_longer_than("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía", 3)

def letter_per_word(array,letter)
	array.map {|w| w.count(letter)}
end

p letter_per_word(["entero", "entrar", "envase", "enviar", "enzima", "equino", "equipo", "erario", "erguir", "eriaza", "eriazo", "erigir", "eringe", "eficientemente", "electroencefalografía"], "e")


=begin
Obteniendo un nuevo array con el método "words_longer_than" a donde todos los "substrings"
tienen una longitud de mas de 3 letras, pasamos ese variable "array" que es un arreglo
con el método "map" (parte de la clase "Array") que invoca cada elemento y nos retorna un nuevo
nuevo arreglo indicando al método "map" un bloque que tiene que hacer el dicho método "map"

Dentro del bloque usamos la variable "|w|" para "word" y le indicamos que queremos obtener
valores "integer" con el método "count" que es parte de la clase "String" y que nos regrese
el conteo de una letra con la variable "letter".

Usando el arreglo que obtuvimos del método "words_longer_than":

["entero", "entrar", "envase", "enviar", "enzima", "equino", "equipo", "erario", "erguir", "eriaza", "eriazo", "erigir", "eringe", "eficientemente", "electroencefalografía"]

y con segundo parametro "letter" le indicamos "e" que nos regrese un arreglo con el conteo
de las letras "e" en cada "substring":

#=> [2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 5, 4]
=end

def numbers_larger_than(num_array)
	num_array.max
end

p numbers_larger_than([2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 5, 4])

=begin
Con el array que obtuvimos con el método "letter_per_word", podemos usar el método de clase
"Enumerable" llamado "max" que nos regresa un objeto con el valor superior, obtenemos:
#=> 5
=end