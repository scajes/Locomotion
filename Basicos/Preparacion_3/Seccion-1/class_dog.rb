class Dog
  def initialize(name, color)
    @name = name
    @color = color
  end

  def show_name
    @name
  end

  def change_color(new_color)
    @color = new_color
  end

  def self_bark
    "GUA Gua GUA"
  end
end

dog1 = Dog.new("Labrador", "Crema")
dog2 = Dog.new("Bull Terrier", "Blanco")
#test
p dog1.show_name
p dog1.self_bark == "GUA Gua GUA"
p dog2.self_bark == "GUA Gua GUA"