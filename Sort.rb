# Write a sort function to sort the following string. You are not allowed to use any builtin sort function that are provided by language libraries.
# You have to sort the string first according to digits and then according to alphabetical order.
# Write your own sort function that you think, will be suitable in case of this type of data and will be faster.
# Also write your reasoning why you are choosing certain algorithm. And write the time and space complexity

# Example
# Input  "0a12b3c4e5r"
# Output "012345abcer"

# Input  "998800zzccxxxaaa"
# Output "008899aaaccxxxzz"

# String can be much longer like this
# 8923092103912391923120931209031923019230192039120391203912039120312093
# 012930sadksnakjdnasjkdlasndlkjsandlajsdnlasjdnlkjsnldkjasdjasldkasjdnla
# jsdasdnasdaksdasndkanl

def swap(arr, x, y)
  temp = arr[x]
  arr[x] = arr[y]
  arr[y] = temp
end

def display(arr, n)
  i = 0
  a = ""
  while (i < n)
    a << arr[i]
    i += 1
  end
  return a
end

def sort(arr, n)
  min = 0
  i = 0
  while (i < n)
    min = i
    j = i + 1
    while (j < n)
      if (arr[min] > arr[j])
        min = j
      end

      j += 1
    end
    if (i != min)
      swap(arr, i, min)
    end
    i += 1
  end
end

arr = "0a12b3c4e5r"
n = arr.length
sort(arr, n)
p display(arr, n)
