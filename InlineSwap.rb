# Move all even numbers to the left side of the array and maintain their order in which they are coming .
# Constraints: You have to do this inline(you are not allowed to initialize data structure)
# Hint: use swap

# Example:
# Input -> [1,2,3,4,5,6,7,8,9]
# Output ->[2,4,6,8,remaining odd digits in any order]

#Input -> [2,4,6,7,8]
#Output -> [2,4,6,8,7]

#Input -> [1,3,5,7]
#Output -> [1,3,5,7]

#Input -> [1,3,5,7,8]
#output -> [8,1,3,5,7] or [8,5,7,3,1]

# Notice the pattern Main thing is that even numbers are on the left side of the array staying in the order in
# which they are in the array. And on odd number there are not any constraint they can be any order but the final array
# should follow the rules even number on left of the array in order they exist and remaining odd after the evens numbers end
#  and they can be be any order.

def swap(arr, i, j)
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
end

def display(arr, size)
  i = 0
  a = []
  while (i < size)
    a << arr[i]
    i += 1
  end
  return a
end

def inline_swap(arr, size)
  j = 0
  i = 0
  while (i < size)
    if (arr[i] % 2 == 0)
      swap(arr, j, i)
      j += 1
    end
    i += 1
  end
end

arr1 = [1, 3, 5, 7, 8]
arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
size = arr1.length
inline_swap(arr1, size)
p display(arr1, size)
size = arr2.length
inline_swap(arr2, size)
p display(arr2, size)
