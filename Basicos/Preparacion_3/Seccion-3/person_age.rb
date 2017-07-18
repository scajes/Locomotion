class Person
  attr_accessor :age
  attr_accessor :person

  def initialize(age, person)
    @age = age
    @person = person
  end

  def age
    "#{@person} is #{years_old} years old."
  end

  private

  def years_old
    time = Time.now
    time.year - @age
  end

end

carlos = Person.new(1987, "Carlos")
martha = Person.new(1991, "Martha")

#test
p carlos.age #== "Carlos is 30 years old."
#=>true
p martha.age #== "Martha is 26 years old."
#=>true

p carlos.years_old
#=>private method `years_old'...(NoMethodError)

# El error occurre por invocar a una instancia
# private fuera de la clase.