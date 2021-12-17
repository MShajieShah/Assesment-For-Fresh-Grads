# Write a function to get all palindroms in string.

# A plaindorm is a string if we reverse that string it would remain same.
# like level ,madam ,ada ,

# Minimum length of palindrom should be greater than equal to 2.

# Examples:
#Input "level"
#Output ["level" ,"eve"]

# Input "zxz"
# Output ["zxz"]

# Input "abcreferdeff"
# Output ["refer" , "efe" ,"ff"]
def get_substrings(string)
  0.upto(string.length - 1).flat_map do |start|
    2.upto(string.length - start).map do |length|
      string[start, length]
    end
  end.uniq
end

substrings = get_substrings("abcreferdeff")
p substrings
substrings.each do |substring|
  if substring.length >= 2
    p substring if substring.reverse == substring
  end
end
