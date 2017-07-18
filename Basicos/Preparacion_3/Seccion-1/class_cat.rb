class Cat
	def initialize(cat)
		@cat = cat
		@run = 0
	end

	def self.meow
		"Miau... Miau..."
	end

	def run(mts=0)
		@run+=mts
		"Corriendo #{@run} mts..."
	end

	def jump
		"Saltando..."
	end
end

cat_1 = Cat.new("buddy")
cat_3 = Cat.new("catty")
cat_5 = Cat.new("billy")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."