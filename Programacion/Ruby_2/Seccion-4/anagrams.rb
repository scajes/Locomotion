def canonical(word)
  # implementa el formato canonical
  word.split(//).sort.join
end

=begin
Script: CANONICAL
Words splited
Result array of letter
SORT alphabeticly array
JOIN to obtain new string
=end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end


def anagrams_for(word, array)
	array.map{|item| item if are_anagrams?(word,item)}.compact
	# Se usa el built in method .map que regresa un nuevo array con los anagramas de la palabra (word) llamado al metodo are_anagrams?
	# Y se usa .compact que remueve los que no son ya que map regresara nil a las palabras que no son anagramas.
end

p anagrams_for("AMOR", ["ROMA", "OMAR", "MORA", "RAMO", "ARMO", "MARO"])
p anagrams_for("LIVE", ["LIFE", "EVIL", "VILE", "LEVI", "VELI", "VELO"])