# Find the character that appears maximum consective times together.

# Input : 'aabbfccddeefffggh'
# Output: 'f'
# Reason: f appear 3 times consective in this string

# Input : 'abcdaaaafg'
# Output: 'a'
# Reason: a appear 4 times consective in this string

# Input : 'abcdaaaafg'
# Output: 'a'
# Reason: a appear 4 times consective in this string

# Input : 'qzzzzzzzqzzz'
# Output: 'z'
# Reason: z appear 7 times consective in this string

def maximum_consective(str)
  hash = {}
  max_char = nil
  max_char_count = 0
  str.each_char do |x|
    count = (hash[x] = (hash[x] || 0) + 1)
    if count > max_char_count
      max_char = x
      max_char_count = count
    end
  end
  return max_char
end

p maximum_consective("qzzzzzzzqzzz")
p maximum_consective("aabbfccddeefffggh")

# or

def maximum_consective(str)
  str.each_char.chunk_while(&:==).map(&:join).max_by(&:length)[0]
end

p maximum_consective("qzzzzzzzqzzz")
p maximum_consective("aabbfccddeefffggh")
