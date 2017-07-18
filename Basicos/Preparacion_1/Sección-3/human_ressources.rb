#=> Ejercicio - Etapas del Desarrollo Humano
etapa = 6
case etapa
when 0..6
  puts 'Infancia'
when 6..12
  puts 'Niñez'
when 12..20
  puts 'Adolescencia'
when 20..25
  puts 'Juventud'
when 25..60
  puts 'Adultez'
else
  puts 'Ancianidad'
end