def capitalize_array(capital)
  capital.map(&:capitalize)
end

p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]