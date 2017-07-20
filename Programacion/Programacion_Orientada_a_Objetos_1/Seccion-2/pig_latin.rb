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

def sentence_converter_pig_latin(sentence)
  sentence.scan(/\w+/).map { |user_input| single_word_converter_pig_latin(user_input)}.join(" ")
end

puts sentence_converter_pig_latin(ARGV.inspect)
# => igpay ananabay ashtray appleway elephantway