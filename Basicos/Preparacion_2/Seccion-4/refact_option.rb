def option(if_this_is_a_true_value, then_the_result_is_this, else_it_is_this)
  x = if if_this_is_a_true_value then then_the_result_is_this else else_it_is_this end
end

#test
p option(1, 2, 3) + 2 == 4
p option(false, 6, 7) + 3 == 10