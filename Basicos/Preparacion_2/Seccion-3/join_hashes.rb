fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}

def join_hash(fruit, weight, taste)
  join_hash_final = Hash.new
  fruit.each do |key, value|
    join_hash_final[key] = value
  end
  weight.each do |key, value|
    join_hash_final[key] = value
  end
  taste.each_pair do |key, value|
    join_hash_final[key] = value
  end
  join_hash_final
end

p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"}