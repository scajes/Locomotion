=begin
 Palabras y Plantillas de Tableros
[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
=end

class Board
# You should put here the given boards templates
  @@boards_templates = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
  @@word = []

  def initialize
     complete_board!
     find_word
  end

  # manda llamar al primer metodo 
  def find_word
    @@boards_templates[0].each do |string|
      search_horizontal(string)
    end
    p @@word.uniq
  end

  def to_s
    complete_board!
  end


  private
  # da formato a la sopa de letras
  def complete_board!
    # hace un split por letra de la sopa de letras
    new_array = @@boards_templates[1].split(//)
    # creas una variable con el abecedario y la mandas a un array
    abc = ('A'..'Z').to_a
    # tu variable itera cuando tenga una letra "X", revuelve y añade mi variable abc aleatoriamente, sino devuelva la iteracion o (x)
    new_array.map!{ |x| x=='X' ? abc.sample : x}
    # se define una variable de instancia en el formato para poder usarla posteriomente
    # a mi array nuevo se convierte en string y se divide en 5
    @new_format = new_array.join.scan(/.{5}/)
    # se añade puts para que imprima en la consola verticalmente
    puts @new_format
  end


  def al_reves
    # nuevo metodo el cual me imprime en reverse 
    @@boards_templates[0].map do |i|
      i.reverse
    end 
  end


  def search_horizontal(string)
    yes = false
    @new_format.each do |x|
      # si mi template de indice 0 esta incluido en mi iteracion
      if x.include? string
        # imprime la iteracion, si es true, imprime la palabra
        yes = true
        @@word << string
        # break
      end
    end
    # sino es true entonces manda llamar mi metodo search_reversal_horizontal
    search_horizontal_reverse(string) if yes == false
  end


  def search_horizontal_reverse(string)
     yes = false
     reves = al_reves
     new_format = @new_format.join
     reves.each do |palabra_al_reves|
       if new_format.include? palabra_al_reves
         yes = true
         @@word << palabra_al_reves.reverse
       else
         search_vertical(string)
       end
     end
     # error, no entra al siguiente metodo si es "true"
     # search_vertical(string) if yes == false
  end


  def search_vertical(string)
    yes = false
    string_completo = ""
    array_vacio = []
    # iteras dos veces, primero por el numero de columnas
    5.times do |num|
      # iterar sobre cada palabra
      @new_format.each do |i|
        # mete toda las palabras en un array individualmente
        array_vacio << i[num]
        # definir nueva variable y juntar las palabras en un solo string
        string_completo = array_vacio.join
        # yes = true
      end
    end
      compare_vertical(string_completo)
      search_vertical_reverse(string) 
  end


  def compare_vertical(string_completo)
    @@boards_templates[0].each do |x|
      # busca en las palabras de boards[0] si el string_completo esta incluido en la iteracion(x)
      if string_completo.include? x
        @@word << x
        # no encontraba la palabra platano
        # break
      end
    end
  end
 

  def search_vertical_reverse(string)
    string_completo_reverse = ""
    array_vacio = []
    5.times do |num|
      @new_format.each do |i|
        i = i.reverse
        array_vacio << i[num]
        string_completo_reverse = array_vacio.join
      end
      compare_reverse_vertical(string_completo_reverse)
      search_diagonal
    end
  end
 

  def compare_reverse_vertical(string_completo_reverse)
    reverse_array = al_reves
    reverse_array.each do |x|
      @@word << x.reverse if string_completo_reverse.include? x
      end
  end


  def search_diagonal
    # iteracion solo de las filas para que avance hasta el ultimo indice
    (3..7).each do |variable|
      diagonal_search(0, variable)
    end
  end


  def diagonal_search(columna,fila)
    array = []
    # dividirlo por letra
    matriz = @new_format.map{|x| x.split("")}
    # mis arreglos son 5 columnas[4] y 8 filas[7] y quiero que empieze en la fila 0
    while columna <= 4 && fila >= 0
       matriz[fila][columna]
       array << matriz[fila][columna]
      columna +=1
      fila -=1
    end
    # compara mi string 
    string_completo = array.join
    if @@boards_templates[0].include? string_completo
      @@word << string_completo
    else
      search_diagonal_reverse
    end
  end


  def search_diagonal_reverse
    # iteracion solo de las filas para que avance hasta el ultimo indice
    (3..7).each do |fila|
      diagonal_search_reverse(0, fila)
    end
  end


  def diagonal_search_reverse(columna,fila)
    array =[]
    # dividirlo por letra
    matriz = @new_format.map{|x| x.split("")}
    # mis arreglos son 5 columnas[4] y 8 filas[7] y quiero que empieze en la fila 0
    while columna <= 4 && fila >= 0
       matriz[fila][columna]
       array << matriz[fila][columna]
        columna +=1
        fila -=1
    end
    # compara mi string 
    string_completo = array.join.reverse
    if @@boards_templates[0].include? string_completo
      @@word << string_completo
    end
  end

end

board = Board.new
board