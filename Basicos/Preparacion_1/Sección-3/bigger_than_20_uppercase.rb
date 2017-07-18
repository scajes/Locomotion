def large(user_input)
  if user_input.length > 20
      user_input.upcase
  else
      user_input
  end
end

p large("Hola vamos a la comida") == "HOLA VAMOS A LA COMIDA"
p large("Es hora de dormir") == "Es hora de dormir"