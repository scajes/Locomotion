def language(speak)
	case speak
	when speak = "JavaScript" then "I like JavaScript"
	when speak = "CSS" then "I like CSS"
	when speak = "Python" then "I like Python"
	when speak = "R" then "I like R"
	when speak = "C++" then "I like C++"
	when speak = "Unity" then "I like Unity"
	when speak = "Ruby" then "I like Ruby"
	when speak = "Ruby on Rails" then "I like Ruby on Rails"
	when speak = "Java" then "I like Java"
	else "I don't like to code"
	end
end

p language("JavaScript") == "I like JavaScript"
p language("Unity") == "I like Unity"
p language("Swin") == "I don't like to code"