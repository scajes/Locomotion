#Class para visualizar los cambios a el csv
class View
  #metodo para poner cuando se añada una tarea
  def adicion(tasks)
    puts "Agregaste la tarea: #{tasks}"
  end
  #Metodo para pones cuando se borre una tarea∫  
  def suprimir(tasks)
    puts "Eliminaste la tarea: #{tasks.tasks}" 
  end
  #Mostrar las tareas con su indice
  def index(array_task)
    #itera dentro de cada elemento y su indice para mostra el array en orden y con estado.
    array_task.each_with_index do |task, index|
      #compara el valor de la tarea, debe ser en string porque el csv lo cambia
      if task.completed == "true"
        #si es true pone esto
        puts "#{index + 1}. [X] #{task.tasks}"
      #si es false pone esto
      else
        puts "#{index + 1}. [ ] #{task.tasks}"
      end
    end
  end
end