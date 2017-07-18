class A
  def b(a)
    'A.b'
  end
end

class B < A
  def b(a)
  #refactorización con operador ternario
  a == 5 ? 'B.b' : super
  # Se llama al método de clase A con super
  end
end

b = B.new

#test
p b.b(5) == "B.b"
p b.b(10) == "A.b"