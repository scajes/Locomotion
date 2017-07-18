def start_with_h(words)
  words.find {|word| word.chr == "h"}
  # Se usa find ya que solo regresa el primer string
  # que empieza con la letra "h"
end

p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"