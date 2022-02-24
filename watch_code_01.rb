# # Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

# # Example 1:

# # Input: `abab`
# # Output: true
# # Explanation: It's the substring `ab` twice

# # Example 2:
# # Input: `aba`
# # Output: false

# Problem: Write a method that takes a string of at least one lower case letter and return true if the string is comprised of repetitions of any of its possible substrings, otherwise return false

# Input: one String
# Output: a Boolean

# Algorithm:
# - Define a method which takes one String parameter, string
# - Initialize an integer, substring_size, to 1, the size of the smallest substring
# - LOOP
#   - Initialize an array to a an array of contiguous substrings which are substring_size size, comparitor
#   - break if comparitor size == 1
#   - are all elements of comparitor equivalent to its first index position? return true
#   - increment substring size by 1
# - return false


# def repeated_substring_pattern(string)
#   substring_size = 1
#   loop do
#     comparitor = []
#     clonestring = string.dup
    
#     loop do
#       break if clonestring.empty?
#       comparitor << clonestring.slice!(0, substring_size)
#     end

#     return false if comparitor[0] == string
#     return true if comparitor.all? { |substring| substring == comparitor[0] }
    
#     substring_size += 1
#   end
# end

def repeated_substring_pattern(string)
  substring_size = 1

  loop do
    substring = string[0, substring_size]
    break if substring.size == string.size
    comparitor = substring * (string.size / substring.size)
    return true if comparitor == string
    substring_size += 1
    end
    
  false
end


p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true
