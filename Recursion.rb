# Write recursive algorithum to flat the list into array
# Input: [1,[2],[[3]] ,4,[[[[[7]]]]]]
# Output:  [1,2,3,4,7]

# Input: [[[1]],2,[[3]] ,4,[[[[[7]]]]]]
# Output:  [1,2,3,4,7]

def recursive(array, results = [])
  array.each do |x|
    if x.class == Array
      recursive(x, results)
    else
      results << x
    end
  end
  results
end

p recursive([1, [2], [[3]], 4, [[[[[7]]]]]])
p recursive([[[1]], 2, [[3]], 4, [[[[[7]]]]]])
