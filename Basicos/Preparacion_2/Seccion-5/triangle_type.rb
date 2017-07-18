def triangle_type(adj, opp, hyp)
	if adj == opp && adj == hyp then "Equilatero"
	elsif adj == opp && adj != hyp then "Isósceles"
	elsif adj != opp && adj != hyp then "Escaleno"
	end
end

p triangle_type(7, 7, 7) == "Equilatero"
p triangle_type(8, 8, 4) == "Isósceles"
p triangle_type(6, 4, 3) == "Escaleno"
p triangle_type(15, 7, 4) == "Escaleno"