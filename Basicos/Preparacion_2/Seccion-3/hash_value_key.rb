hash = { departure: "Mexico", arrival: "Madrid" } # Declarando un hash

def hash_value(hash)
	hash_final = []  							  # Se crea un nuevo arreglo
	hash.each_key do |key|                    # Iterando cada clave del hash
		hash_final << key                       # Guardando cada clave del hash en un arreglo 
	end
	return hash_final                             # Regresando el nuevo arreglo con el resulto del metódo.
end

p hash_value(hash)  == [:departure, :arrival]         # Prueba del metódo hash_value regresando true