def error_message(name, credit_card_type, credit_card_number)
  

  last_3_cc_n = credit_card_number[-3..-1]

  if credit_card_number.chr.include? "4"
    credit_card_type = "VISA"
  else
    "#{name}, The #{credit_card_type.upcase} Credit Card Number 'xxx-#{last_3_cc_n}' You Provided is Invalid."
  end
end


p error_message('Rodrigo', 'American Express', '205782460166975') == "Rodrigo, The AMERICAN EXPRESS Credit Card Number 'xxx-975' You Provided is Invalid."

p error_message('Carla', 'Visa', '3912888888881881') == "Carla, The VISA Credit Card Number 'xxx-881' You Provided is Invalid."

# es posible escribir de manera mas sencilla credit_card_number.chr == "4"