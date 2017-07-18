# La estructura de control iterativa while

contador = 0

while contador < 10
  puts "El contador es: #{contador}"
 #se utiliza para evitar loop infinito
  contador += 1
end



# Estructura de control until

contador = 0
until contador > 10 
  puts "El contador es #{contador}"
  contador += 1
end

# En este ejemplo i toma el valor de cada elemento del rango entre 0 y 5



# Estructura de control loop

for i in 0..5
  puts "El valor de i es: #{i}"
end

i = 20
loop do
  i -= 1
  print "#{i}"
  #condición para romper el loop
  break if i <= 0
end



# Estructura de control next

i = 20
loop do
  i -= 1
  #se usa next para saltar si número es impar.
  next if i % 2 == 1
  #con el uso de next se imprimen sólo números pares.
  print "#{i}"
  break if i <= 0
end


# Estructura de control each

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end


# Estructura de control times

10.times { print "Code the Future" }