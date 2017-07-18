class NumberGuessingGame

  def initialize
    # variable de instancia que define un número aléatorio entre 0 y 9
    @answer = rand(0..9)
  end

  # comportamiento si < o > indica al usuario si esta abajo o arriba
  # de la variable de instancia @anwer
  def guess(guess)

    if guess > @answer
      "Too high"

    elsif guess < @answer
      "Too low"

    else
      "You got it!"

    end

  end

end

# instancia de NumberGuessingGame
game = NumberGuessingGame.new

# variable fuera del rango para que el ciclo anidado "while"
# tenga algo para comparar
num = 10
# variable para que el ciclo "while" tenga algo que comparar
choice = "y"

# ciclo para reiniciar un nuevo juego
while choice != "n"
  
  # variable para que el ciclo "while" tenga algo que comparar
  # ya que la primera variable ya se comparó
  num = 10

  # ciclo anidado que compara la variable de instancia
  # si @anwer no se compara a "You got it" sigue el ciclo
  while game.guess(num) != "You got it!"

  # codigo para el ciclo anadido
  p "Pick a number between 0 to 9"
    num = gets.chomp.to_i
    p game.guess(num)

  end

  # codigo para seguir un nuevo juego o salir
  p "Do you want to continue (y / n)"    
    choice = gets.chomp.to_s
    game = NumberGuessingGame.new

end