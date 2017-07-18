def deaf_grandma
	user_input = gets.chomp
	i = 3

	if
		user_input == "BYE TQM"
		loop do
			i -= 1
		break if i <= 0
		gets.chomp
		end
	elsif
		user_input == user_input.upcase && user_input != "BYE"
		puts "NO, NO DESDE 1983"
		deaf_grandma
	else
		puts "HUH?! NO TE ESCUCHO, HIJO!"
		deaf_grandma
	end

end

deaf_grandma