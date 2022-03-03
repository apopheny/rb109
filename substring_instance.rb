# Complete the solution so that it returns the number of times the search_text is found within the full_text.

# Usage example:

# solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# solution('aaabbbcccc', 'bbb') # should return 1

# Problem: Write a program that receives two strings: One, a string to be searched, and one, a string to be found. Return the number of times the string to be found occurs.

# Input: Two strings
# Output: An integer

# Data structures: Iterate through string and increment an integer

# Algorithm
# Define a method, solution, that has two parameters, text & search
# Initialize a local variable to 0, result
# Iterate through text by index position
#   if current text index position equals the first index position of search
#     result += 1 if text[current, search.size]
# return result

def solution(text, search)
  result = 0
  (0...text.size).each do |index|
    result += 1 if text[index, search.size] == search
  end
  result
end

p solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') # should return 1
