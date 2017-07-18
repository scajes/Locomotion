def prism_type(adj, opp, hyp)
	if adj == opp && adj == hyp then "cubo"
	elsif adj == opp && adj != hyp then "prisma rectangular"
	elsif adj != opp && adj != hyp then "cuboide"
	end
end

p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"