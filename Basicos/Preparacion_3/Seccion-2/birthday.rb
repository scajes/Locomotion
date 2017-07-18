class Person
  @@age = 0

  #no modificar este método de clase
  def self.birthday
    @@age += 1
  end
end

alice = Person.new

#test
alice = 17
p alice == 17
#=> true
alice += Person.birthday
p alice  == 18
#=> true