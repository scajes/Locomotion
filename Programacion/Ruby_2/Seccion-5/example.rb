p abecedario = ('A'..'Z').last(20)
p que_sera = Array.new(3) { abecedario.pop(2) }

# => [["Y", "Z"], ["W", "X"], ["U", "V"]]