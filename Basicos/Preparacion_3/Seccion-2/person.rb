class Person
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def name
    @first_name
    @last_name
    puts "#{@first_name} #{ @last_name}"
  end

  def information
    @first_name
    @last_name
    @email
    puts "Name: #{first_name} #{last_name}"
    puts "Email: #{email}"
  end
end

person = Person.new('Alberto', 'Sacasa', 'scajes@aol.fr')

person.name
person.information