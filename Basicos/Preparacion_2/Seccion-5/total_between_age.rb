def total_between_age(age, min_age, max_age)
	age.delete_if { |a| a < min_age }
	age.delete_if { |b| b > max_age }
	age.count
end

p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4