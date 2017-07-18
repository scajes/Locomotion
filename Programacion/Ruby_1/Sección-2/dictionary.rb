def dictionary_sort
	dictionary = []
	counter = 0
	puts 'Escribe una palabra:'
	loop do
		answer = gets.chomp
		break if answer.empty?
		puts 'Escribe otra palabra(o presiona "enter" para finalizar):'
		if answer.match /\d/
			puts "No se accepta números, ingrese una palabra"
		elsif answer.match /\s/
			puts "No se accepta espacio vacio, ingrese una palabra"
		else
		dictionary << answer
		counter += 1
		end
	end
	puts "Felicidades! Tu diccionario tiene #{counter} palabras:"
	dictionary.sort! {|a, b| a.upcase <=> b.upcase}
	dictionary.each {|word| puts word}
end

dictionary_sort