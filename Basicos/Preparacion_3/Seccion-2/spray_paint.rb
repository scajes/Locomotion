class Painting
	attr_accessor :color

	def initialize(color)
		@color = color
	end

	def spray_paint(color)
		@color = color.capitalize
		"The #{@color} door looks great!"
	end
end

big_door = Painting.new('yellow')

#test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"