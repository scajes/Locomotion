def median(arr)
  if arr.length.odd?
    return arr [(arr.length - 1) / 2]
  else arr.length.even?
    return ( arr [arr.length / 2] + arr [arr.length / 2 - 1] ).to_f / 2
  end
end

p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8