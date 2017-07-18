def user

  puts "Intenta adevinar la palabra secreta..."
  entradas = 0
  user_input = " "

  while user_input != "Ya"
    entradas = entradas + 1
    puts "Inténtalo..."
    user_input = gets.chomp
  end

  "Lo lograste... El número de entrada(s) es de #{entradas}"
end

p user