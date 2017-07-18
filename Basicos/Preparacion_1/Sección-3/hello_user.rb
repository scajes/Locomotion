def say_hi(name)
  if name.include? "Daniel"
    "Welcome back"
  else
    "Hi, #{name}"
  end
end

p say_hi('Daniel') == "Welcome back"
p say_hi('Juan') == "Hi, Juan"