def odd_indexed(odd)
  arr_odd = []
  odd.each_with_index do |string, index|
    if index.even?
      # Se indica even ya que el índice de primera
      # posición es 0 entonces es par
      arr_odd << string
    end
  end
  arr_odd
end

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]