class Vehicle
  @@number_of_vehicles = 0

  def initialize
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    "This Superclass has created #{@@number_of_vehicles} vehicles"
  end
end

class Car < Vehicle

end

class Bus < Vehicle

end

#test
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new

p Car.number_of_vehicles == "This Superclass has created 3 vehicles"
# => true