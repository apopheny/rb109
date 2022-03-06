# In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

# Example:

# letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

# Input: a string
# Output: a hash

# Problem: Write a program that receives a string and returns the number of times the letters of the string appear in a Hash. The string will be lower case, and the keys of the hash should be symbol versions of the letter.

# Algorithm:
# Define a method, letter_count, with one parameter, string
# Initialize a variable, result, to an empty hash
# Iterate through each letter of the string as an array
#   If result has the letter as a symbol as its key, its value should be incremented by one
#   Otherwise, it should be assigned as a key value pair with a value of 1
# Return result

def letter_count(string)
  result = {}
  string.chars.uniq.each do |letter|
    result[letter.to_sym] = string.count(letter)
  end
  result
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
