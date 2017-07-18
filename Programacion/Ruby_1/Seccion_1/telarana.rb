def web_elephant(elephant)
  i = 0
  loop do
    i += 1
	puts "#{i} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."
	break if i >= elephant
  end
  puts "La telaraña se rompio por el peso de los #{i} elefantes!!!"
end

web_elephant(20)