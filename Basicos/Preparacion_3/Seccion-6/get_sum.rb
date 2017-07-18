# Suma de números

def get_sum(num1, num2)
  if num1 < num2
	(num1..num2).inject(:+)||1
  else
  	(num2..num1).inject(:+)||1
  end
end


p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2