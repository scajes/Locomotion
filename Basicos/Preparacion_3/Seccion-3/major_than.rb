class Cat
  attr_accessor :age

  CAT_YEARS = 7

  def initialize(age)
    @age = age
  end

  def es_mayor_que?(other_age)
    cat_age > other_age.cat_age
  end


  protected

  def cat_age
    cat_years
  end

  private

  def cat_years
    @age * CAT_YEARS
  end

end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false
#=>true
p peto.cat_age
p katty.cat_years