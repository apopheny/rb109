# Video 5

# # Find the length of the longest substring in the given string which is the same in reverse.

# # As an example: if the input was 'I like racecars that go fast,' the substring 'racecar' length would be 7

# # If the length of the input string is 0, the return would be 0

# Problem: Given a string, write a program which returns the length of the longest palidrome in the string. Strings will not have spaces, but will be comprised of lowercase letters and numbers

# Input: a String
# Output: an Integer

# Data structure: an Array containing palindrome lengths

# Algorithm:
# Define a method, longest_palindrome, which has one parameter, str
# Initialize an Array to a local variable, palidromes
# Iterate through the string and store palindrome substring lengths to palindromes
#   From the zero index position to the last index position, examine if string is a palindrome
#   Store length number if so
#   From zero index position to second to last index position, repeat
#   continue until only 1
#   Move on to second index position and repeat
# Return the size of the largest number

def longest_palindrome(str)
  return 0 if str.empty?
  lengths = palindrome_lengths(str)  
  return 0 if lengths.empty?
  lengths.max
end

def palindrome_lengths(str)
  palindrome_lengths = []
  (0...str.size).each do |start_counter|
    (start_counter...str.size).each do |end_counter|
      palindrome_lengths << str[start_counter..end_counter].size if is_palindrome?(str[start_counter..end_counter])
    end
  end
  palindrome_lengths
end

def is_palindrome?(str)
  str == str.reverse
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9
