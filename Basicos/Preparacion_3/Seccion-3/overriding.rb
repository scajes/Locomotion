class Animal
  def speak
    "Hello!"
  end
end

class Dog < Animal
  def initialize(name)
    @name = name
  end
  def speak
    "#{@name} say Guau!"
  end
end

class Cat < Animal
end

#test
drako = Dog.new("Drako")
peto = Cat.new
p drako.speak == "Drako say Guau!"     
# => true
p peto.speak == "Hello!"           
# => true