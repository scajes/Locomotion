#método que usa yield para llamar al bloque 
def average_grade(grades)
  require 'benchmark'
  
  time_code = Benchmark.realtime do 

  puts "------------Time started----------"
  time_now = Time.now
  puts "Start time: #{time_now}"
  puts
  puts "Average is: #{yield grades}"
  puts
  puts "End time: #{time_now}"
  puts "-------------Time finished--------"

end

  result = time_code 
  puts "Result: #{result} seconds"

end

#método para calcular el promedio de calificaciones
#def average_grade(grades)
 # count = 0
  #average = 0
  #grades.each { |grade|
   #  average += grade
    # count += 1
  #}
  #average.to_f / count
#end

average_grade([8,7,8,7,8]) { |grad| grad.inject { |result, num| result + num } / grad.length.to_f }