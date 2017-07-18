hash = { departure: "Mexico", arrival: "Madrid" } # Declarando un hash

def hash_value(hash)
	hash_final = []  							  # Se crea un nuevo arreglo
	hash.each_value do |value|                    # Iterando cada valor del hash
		hash_final << value                       # Guardando cada valor del hash en un arreglo 
	end
	hash_final                             # Regresando el nuevo arreglo con el resulto del metódo.
end

p hash_value(hash) == ["Mexico", "Madrid"]         # Prueba del metódo hash_value regresando true