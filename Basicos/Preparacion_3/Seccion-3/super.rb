class People
  attr_reader :name
  def initialize(name)
  	@name = name
  end
end

class Man < People
  attr_writer :name
	def initialize(name)
		super
	end
  def color
    @color = @name
  end
end

class Woman < People
  attr_accessor :name
end

#test
man = Man.new("brown")
woman = Woman.new("leyla")
p man.name == "brown"
#=>true
p man.color == "brown"
#=>true
p man.color = "red"
#=>...undefined method `color='... 
p woman.name == "leyla"
#=>true
woman.name = "Karla"
p woman.name == "Karla"
#=>true
p woman.color == "leyla"
#=>...undefined method `color'...