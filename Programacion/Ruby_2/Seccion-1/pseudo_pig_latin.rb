=begin
Script: Single word converter to Pig Latin

GET a word from user input
IF the word starts with a vowel, add "way" to the end
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add "ay"
ENDIF
RETURN the pig-latin word



Script: Sentence converter to Pig Latin

GET a sentence
SCAN each word of sentence
MAP each word & CALL single_pig_latin_method
JOIN each word
=end



def single_word_converter_pig_latin(user_input)

	if
		# Condición para palabra que empiensa con una vocal
		/[AEIOUaeiou]/.match(user_input[0]) then user_input.insert(-1, 'way')
	elsif
		# Condición para palabra que empiensa con "Q" y "u" o "q" y "u"
		/[Qq]/.match(user_input[0]) && /[u]/.match(user_input[1]) then user_input.split(//).rotate(2).join.insert(-1, 'ay')
	elsif
		# Condición para que no modifique número
		/[0-9]/.match(user_input[0]) then user_input
	else
		# Bucle para palabra que empiensa con consonante(s)
		while /[^AEIOUaeiou]/.match(user_input[0]) do
		user_input = user_input.split(//).rotate.join
		end
		user_input.insert(-1, 'ay')
	end
end

=begin
	if
		# Condición para palabra que empiensa con una vocal
		/[AEIOUaeiou]/.match(user_input[0])
		user_input.insert(-1, 'way')
	elsif
		# Condición para palabra que empiensa con tres consonantes
		/[^AEIOUaeiou]/.match(user_input[0]) && /[^AEIOUaeiou]/.match(user_input[1]) && /[^AEIOUaeiou]/.match(user_input[2])
		user_input.split(//).rotate(3).join.insert(-1, 'ay')
	elsif
		# Condición para palabra que empiensa con "Q" y "u" o "q" y "u"
		/[Qq]/.match(user_input[0]) && /[u]/.match(user_input[1])
		user_input.split(//).rotate(2).join.insert(-1, 'ay')
	elsif
		# Condición para palabra que empiensa con dos consonantes
		/[^AEIOUaeiou]/.match(user_input[0]) && /[^AEIOUaeiou]/.match(user_input[1])
		user_input.split(//).rotate(2).join.insert(-1, 'ay')
	else
		# Condición para palabra que empiensa con una consonante
		/[^AEIOUaeiou]/.match(user_input[0])
		user_input.split(//).rotate.join.insert(-1, 'ay')
	end
=end


def sentence_converter_pig_latin(sentence)
	sentence.scan(/\w+/).map { |user_input| single_word_converter_pig_latin(user_input)}.join(" ")
end

p sentence_converter_pig_latin("This is a pig eating a banana from trash as a Query from happy duck with gloves cleaning an egg and eating an apple from I for school 9")