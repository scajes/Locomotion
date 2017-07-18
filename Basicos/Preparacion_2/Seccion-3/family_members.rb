family = {  uncles: ["jorge", "samuel", "steve"],
              sisters: ["angelica", "mago", "julia"],
              brothers: ["polo","rob","david"],
              aunts: ["maria","minerva","susana"]
         }

def family_members(key)
  family_final = []
  key[:sisters].each do |x|
    family_final << x
  end
  key[:brothers].each do |y|
    family_final << y
  end
  family_final
end

p family_members(family) == ["angelica", "mago", "julia", "polo", "rob", "david"]