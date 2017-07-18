def shopping(list)
  basket_shopping = nil
    basket_shopping = list.join(", ") if list
end

#test
p shopping(["eggs", "milk", "bread", "orange juice"]) == "eggs, milk, bread, orange juice"