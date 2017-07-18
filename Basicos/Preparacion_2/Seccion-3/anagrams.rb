words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
        'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
        'flow', 'neon']

def anagrams(words)
  final_array = []
  words.each do |word_1|
    anagrams_array = []
    words.each do |word_2|
      if (word_2.split(//).sort == word_1.split(//).sort)
        anagrams_array << (word_2)
      end
    end
    final_array << (anagrams_array)
  end
  final_array.uniq
end

p anagrams(words) == [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]