def payment(user_input)
  puts "Welcome, your Visa Credit Card has been processed"
  if user_input == "Visa"
    puts "Credit Card has been Charged"
  else
    puts "We only accept visa credit card"
  end
end

p payment("Visa")