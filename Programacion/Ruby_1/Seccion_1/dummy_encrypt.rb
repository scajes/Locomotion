def dummy_encrypt(string)
	string.reverse.swapcase.gsub(/[aeiou]/,"*")
end

puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"