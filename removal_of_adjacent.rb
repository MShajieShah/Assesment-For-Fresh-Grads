# Remove all adjecent duplicates words in a list.

# Input : ['the', 'ball' , 'ball', 'the'  'cat' 'the']
# Output: ['cat' ,'the']
# Reason: After Removing the ball that appers together the list will look like this ['the' ,'the' 'cat' ,'the']. Now again we have to remove 'the' that appears together then final answer would be ['cat', 'the']

# Input : ['zero','one' , 'two' ,'three', 'three' ,'two' ,'one' ,'zero']
# Output: []

# Input : ['zero','one' , 'two' ,'three' ,'two' ,'one' ,'zero']
# Output: ['zero','one' , 'two' ,'three' ,'two' ,'one' ,'zero']
def remove_duplicates(s)
  stack = []
  s.each do |item|
    item == stack[-1] ? stack.pop : stack.push(item)
  end
  stack.join(" ")
end

p remove_duplicates(["the", "ball", "ball", "the", "cat", "the"])
p remove_duplicates(['zero','one' , 'two' ,'three', 'three' ,'two' ,'one' ,'zero'])
p remove_duplicates(['zero','one' , 'two' ,'three' ,'two' ,'one' ,'zero'])