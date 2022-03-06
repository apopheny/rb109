# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"


# Input: An array of strings
# Output: a string

# Problem: Write a program that receives an array of strings and returns a string with the elements cocatenated. If empty, no one likes this, if the size is 2, with 'and', if 3, with ',' then 'and', and if 4+, with ',' then 'and' with the remaining elements replaced with the number of remaining elements

# Algorithm
# Define a method, likes, with one parameter, arr
# if arr is empty, return 'no one likes this'
# if size is 1, return element likes this
# if size is 2, add ' and ' to element 1 and join + ' like this'
# If size is 3, add ', ' to element 1 and ' and ' to element 2, and join + ' like this'
# If size is 4+ add ', ' to element 1 and ' and ' to element 2, and join + 'arr.size - 2 like this'

def likes(arr)
  return 'no one likes this' if arr.empty?
  return "#{arr[0]} likes this" if arr.size == 1
  if arr.size == 2
    "#{arr[0]} and #{arr[1]} like this"
  elsif arr.size == 3
    "#{arr[0]}, #{arr[1]} and #{arr[2]} like this"
  else
    "#{arr[0]}, #{arr[1]} and #{arr.size - 2} others like this"
  end
end

p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'