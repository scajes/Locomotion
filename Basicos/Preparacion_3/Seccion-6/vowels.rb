# Removiendo vocales

def vowels(word)
  word.map! do |words|
    words.gsub(/[aeiou]/, '')
  end
end

p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]