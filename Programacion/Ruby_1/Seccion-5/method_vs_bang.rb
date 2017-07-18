def capitalize(word_cap)
	word_cap.capitalize
	word_cap
end

def capitalize_bang(word_cap_bang)
	word_cap_bang.capitalize!
	word_cap_bang
end

# Driver code
word_cap = "alberto"
word_cap_bang = "sacasa"

p capitalize(word_cap) == "alberto"
p capitalize_bang(word_cap_bang) == "Sacasa"