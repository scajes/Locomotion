def true_account_number?(account)
	if account.match /\d{4}-\d{3}-\d{3}/ then true
	end
end

def account_number(account)
	if account.match /\d{4}-\d{3}-\d{3}/ then account.match(/\d{4}-\d{3}-\d{3}/).to_s
	end
end

def account_number_array(account)
	if account.match /\d{4}-\d{3}-\d{3}/ then account.scan(/\d{4}-\d{3}-\d{3}/)
	else []
	end
end

def account_number_mask(account)
	if account.match /\d{4}-\d{3}-\d{3}/ then account.scan(/\d{4}-\d{3}-\d{3}/).join(", ").gsub(/\d{4}-\d{3}/, 'XXXX-XXX')
	end
end

def account_number_format(account)
	if
		account.match /\d{10}/ then account.scan(/\d{10}/).join(", ").unpack('A4A3A3',).join("-")
	elsif
		account.match /\d{4}.\d{3}.\d{3}/ then account.scan(/\d{4}.\d{3}.\d{3}/).join(", ").gsub(/\./,"-")
	else
		"Invalid"
	end
end


# Driver code
p true_account_number?("1234-123-123 se encuentra en proceso de revisión de sus documentos") == true
p true_account_number?("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos") == nil
p true_account_number?("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311") == true
p true_account_number?("Hay que cancelar los fondos de la cuenta 4-12-12 por intento de fraude") == nil
p account_number("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == "1234-123-123"
p account_number("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos") == nil
p account_number("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311") == "1234-123-123"
p account_number("Hay que cancelar los fondos de la cuenta 4-12-12 por intento de fraude") == nil
p account_number_array("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == ["1234-123-123"]
p account_number_array("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos") == []
p account_number_array("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311") == ["1234-123-123", "4321-321-311"]
p account_number_array("Hay que cancelar los fondos de la cuenta 4-12-12 por intento de fraude") == []
p account_number_mask("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == "XXXX-XXX-123"
p account_number_mask("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos") == nil
p account_number_mask("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311") == "XXXX-XXX-123, XXXX-XXX-311"
p account_number_mask("Hay que cancelar los fondos de la cuenta 4-12-12 por intento de fraude") == nil
p account_number_format("El Cliente con el número de cuenta 1234123123 se encuentra en proceso de revisión de sus documentos") == "1234-123-123"
p account_number_format("El Cliente con el número de cuenta 41212 se encuentra en proceso de revisión de sus documentos") == "Invalid"
p account_number_format("Hay que transferir los fondos de la cuenta 1234.123.123 a la cuenta 4321.321.311") == "1234-123-123, 4321-321-311"
p account_number_format("Hay que cancelar los fondos de la cuenta 41212 por intento de fraude") == "Invalid"