# Introduction

# The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.

# The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source Wikipedia)

# Task

# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 

# Rules

#  1.  The input string will always be lower case but maybe empty.

#  2.  If the character in the string is whitespace then pass over it as if it was an empty seat

# Example

# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# Input: A string
# Output: An array of strings

# Problem: Write a program which receives a string. It should ouput an array of strings with each letter of the string capitalized in succession. It should skip over spaces.

# Algorithm:
# Define a method, wave, with one parameter, string
# Initialize a local variable, result, to an empty array
# For each non whitespace character in the string
#   Push the string with that character capitalized to result
# Return result

def wave(string)
  result = []
  (0...string.size).each do |string_index|
    next if string[string_index] == ' '
    working_copy = string.dup
    working_copy[string_index] = working_copy[string_index].upcase
    result << working_copy
  end
  result
end

result = ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("hello") == result #"Should return: '#{result}'"

result = ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("codewars") == result #"Should return: '#{result}'"

result = []
p wave("") == result #"Should return: '#{result}'"

result = ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave("two words") == result #"Should return: '#{result}'"

result = [" Gap ", " gAp ", " gaP "]
p wave(" gap ") == result #"Should return: '#{result}'"
