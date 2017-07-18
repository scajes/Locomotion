def group_by_starting_letter(group_first)
  group_first.group_by { |first_letter| first_letter[0]}
end

p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}