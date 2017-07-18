def bottles_of_beer(bottles)
  i = 99
  loop do
    i -= 1
	puts "#{i} bottles of beer."
	break if i <= bottles
  end
  puts "You're drunk!!!"
end

bottles_of_beer(80)