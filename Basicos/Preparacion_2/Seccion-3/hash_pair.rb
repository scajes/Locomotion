hash = { colonia: "Lindavista" }  # Declarando un hash

def hash_value(hash)
	hash.each do |key, value|                    # Iterando clave y valor del hash
		p "La llave del Hash es '#{key}' y su valor es #{value}"                # Imprimiendo un string llamado con interpolación cada clave y valor del hash
	end
end

hash_value(hash)         # Prueba del metódo hash_value regresando un string