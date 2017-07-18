class Animal
  def breath
    true
  end
end

class Dog < Animal
  CONSTANT = "Bark"
  def bark
    @bark = CONSTANT
  end
end

class Turtle < Animal
  CONSTANT = "Slow"
  def neck_retraction
    @neck_retraction = CONSTANT
  end
end

class Macaw < Animal
  CONSTANT = "Clay"
  def toxin
    @toxin = CONSTANT
  end
end

class Fish < Animal
  CONSTANT = "Shoal"
  def fear
    @fear =CONSTANT
  end

  def swim
    @swim = "Swim"
  end
end

class Dolphin < Animal
  CONSTANT = "Flipper"
  def torpedo
    @torpedo = CONSTANT
  end
end

class Reptile < Animal
  CONSTANT = "Egg"
  def tetrapod
    @tetrapod = CONSTANT
  end

  def has_scales?
    true
  end
end

class Cat < Animal
  CONSTANT = "Vermin"
  def hunt
    @hunt = CONSTANT
  end
end

class Whale < Animal
  CONSTANT = "Biosonar"
  def senses
    @senses = CONSTANT
  end
end

class Snake < Animal
  CONSTANT = "Forked tongue"
  def detect
    @detect = CONSTANT
  end
end

class Mammal < Animal
  CONSTANT = "Placenta"
  def giving_birth
    @giving_birth = CONSTANT
  end

  def warm_blooded?
    true
  end
end

class Bird < Animal
  CONSTANT = "Fly"
  def flying
    @flying = CONSTANT
  end
end

dog = Dog.new
turtle = Turtle.new
macaw = Macaw.new
fish = Fish.new
dolphin = Dolphin.new
reptile = Reptile.new
cat = Cat.new
whale = Whale.new
snake = Snake.new
mammal = Mammal.new
bird = Bird.new

p dog.bark == "Bark"
p dog.breath == true
p turtle.neck_retraction == "Slow"
p turtle.breath == true
p macaw.toxin == "Clay"
p macaw.breath == true
p fish.fear == "Shoal"
p fish.swim == "Swim"
p fish.breath == true
p dolphin.torpedo == "Flipper"
p dolphin.breath == true
p reptile.tetrapod == "Egg"
p reptile.has_scales? == true
p reptile.breath == true
p cat.hunt == "Vermin"
p cat.breath == true
p whale.senses == "Biosonar"
p whale.breath == true
p snake.detect == "Forked tongue"
p snake.breath == true
p mammal.giving_birth == "Placenta"
p mammal.warm_blooded? == true
p mammal.breath == true
p bird.flying == "Fly"
p bird.breath == true