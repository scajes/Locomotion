require 'set'

def shuffle(array)
  # escribe el algoritmo que revuelva un array
  shuffle_array = Set[]
  index = array.size
  loop do
  	index -= 1 if shuffle_array.add?(array.sample)
  	break if index <= 0
  end
  shuffle_array.to_a
end


# Driver code:
array = (1..15).to_a


# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true