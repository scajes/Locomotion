# Dado

class Die

  def initialize(sides)
    @sides = sides
  end

  def sides
    if @sides == 1
    "Your dice need a minimun of 2 sides!"
    else
      "Your dice has #{@sides} sides!"
      "Let's roll!"
    end
  end

  def roll
    "You got the #{rand(1..@sides)}"
  end

end

dado_1 = Die.new(1)
dado_2 = Die.new(3)

p dado_1.sides
p dado_2.sides
p dado_2.roll