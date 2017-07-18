# Dado un array de números imprime únicamente los elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index
def print_odd_indexed_integers(array)
	array.each_with_index { |value, index| puts value if index.odd}
end

