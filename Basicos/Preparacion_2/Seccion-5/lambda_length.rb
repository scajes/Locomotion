strings = ["ruby", "java", "c++", "javascript"]
char_length = lambda { |x| x.split(//).length > 4 }

p strings.select(&char_length).join(", ") == "javascript"