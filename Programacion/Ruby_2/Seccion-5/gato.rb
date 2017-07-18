=begin
gato = [ ["X", "X", "O"],
         ["O", "X", "O"],
         ["O", "O", "X"] ]
=end

def gato
	first = 0
	cat = Array.new(3) { Array.new(3) }
	count_first_input = 1
	count_second_input = 1

	(0..2).each do |i|
		(0..2).each do |j|
			n=rand(2)
			n == 0 ? value = "X" : value = "O"
			first = n if i == 0 && j == 0
			if n == first && count_first_input <= 5
				cat[i][j] = value
				count_first_input += 1
			elsif n != first && count_second_input <= 4
				cat[i][j] = value
				count_second_input += 1
			else n == 0 ? value = "O" : value = "X"
				cat[i][j] = value
			end
		end
	end
	cat		
end

p gato