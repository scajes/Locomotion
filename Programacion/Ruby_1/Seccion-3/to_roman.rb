def to_roman(num)
	arabic_to_roman = {
	1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
  50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
=begin
  Se declara un hash con pares de forma regresiva ya que se usara para la iteración
  una forma regresiva.
=end
  roman_result = ""
  arabic_to_roman.each do |arabic, roman|
    roman_result << roman*(num/arabic)
=begin
  Se multiplica la variable roman que es un string ya que el resultado de
  la división entre el argumento num y la variable arabic que es un integer
  resulta en la cantidad de la variable roman que regresará el método to_roman
=end
    num = num % arabic
=begin
  Se indica al argumento num que se modifiqué a cada vez que se itera sobre
  el hash arabic_to_roman para que cada ciclo sea solo el modulo que sea
  el nuevo argumento

=end
  end
  roman_result
end


a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}"