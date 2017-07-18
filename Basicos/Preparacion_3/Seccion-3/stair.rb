class Stair

	def initialize(material, size)
		@material = material
		@size = size
	end

	def larger_size_than?(new_size)
		# Con .size se llama la instancia protected attr_reader :size
		size > new_size.size
	end

	protected
	# Se define a protected por no tener error de consola al momento
	# de llamar la instancia
	attr_reader :size

end

#test
metal = Stair.new("Metal", 54)
wood = Stair.new("Wood", 23)
p "Well done!" if metal.larger_size_than?(wood)