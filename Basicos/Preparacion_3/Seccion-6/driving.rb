# Driving

class MyCar

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(accelerate)
    @current_speed += accelerate
    "You push the gas and accelerate #{accelerate} kph."
  end

  def brake(brake)
    @current_speed -= brake
    "You push the brake and decelerate #{brake} kph."
  end

  def current_speed
    "You are now going #{@current_speed} kph."
  end

  def shut_down
    "Let's shut down to #{@current_speed}!"
  end
end

carro_prueba = MyCar.new(1984, "Red", "Mustang")

p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 40 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 0 kph."
p carro_prueba.shut_down == "Let's shut down to 0!"
p carro_prueba.current_speed == "You are now going 0 kph."