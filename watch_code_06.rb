# Video 4

# Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, or false if you do not. We only care about substrings which are longer than one letter long.

# Problem: Write a program that compares two strings. If there is a substring of at least 2 contiguous characters which exists in both strings, return true. Else return false. If either input is empty, return false. Characters are compared irrespective of case.

# Input: two strings which are compared
# Output: a boolean representing whether there is a substring of at least 2 that is in both strings

# Data structures: An array of substrings

# Algorithm

# Initialize a method, substring_test, which has two parameters, string1 & string2
# if string1 or string2 are empty, return false
# Initialize a local variable within the method to an empty array, string1_arr
# Initialize a local variable within the method to an empty array, string2_arr
# Iterate through string1 and return all 2 character substrings within the string and store them in string1_arr in lowercase form
# Iterate through string2 and return all 2 character substrings within the string and store them in string2_arr in lowercase form
# Iterate through string1_arr. If any of the elements within it are included in string2_arr, return true. else return false

def substring_test(string1, string2)
  return false if string1.empty? || string2.empty?
  string1_arr, string2_arr = substrings(string1), substrings(string2)
  string1_arr.any? { |substring| string2_arr.include?(substring) }
end

def substrings(string)
  counter = 0
  result = []
  loop do
    result << string[counter, 2].downcase
    counter += 1
    break if counter == string.size - 1
  end
  result
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('', '') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', '111t') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
