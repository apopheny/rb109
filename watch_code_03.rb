# You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits

# 12 == 21
# 531 == 513
# 2017 == 2071
# if no bigger number can be composed using those digits, return -1:
# 9 == -1
# 111 == -1
# 531 == -1


# Problem: Write a program which takes a positive integer number and returns the next number in the series of numbers which can be created using the number's digits which is larger. If there is no such number in the series, the program should return -1

# Input: an integer
# Output: an integer

# Algorithm

# - Define a method, 'next_num', which takes an Integer parameter, 'input'
# - LOGIC1: store the digits of int to an array, 'input_digits'
#   - Convert int into a string 
#   - Separate the characters of that string into an array

# - If all strings in 'input_digits' are equivalent to its first element, return -1

# - LOGIC2: Store all possible permutations of 'input_digits' into a sorted array, 'permutations'
#   - Iterate through input_digits using `Array#permutation` and save the return to 'permutations'
#   - Iterate through 'permutations' and join the elements of the sub-array, coverting them back into integers, and save this to 'permutations'
#   - Sort the integers from smallest to largest

# - LOGIC3: Iterate through 'permutations' to find the next element after 'input', return it if it exists, return -1 if it doesn't

# - Find the index position of 'input', and save it to a variable, 'input_index'
# - Call 'permutations'[input_index + 1]
#   - If nil, return -1
#   - Else, return 


def next_num(input)
  input_digits = input.to_s.chars

  return -1 if input_digits.all? { |string_digit| string_digit == input_digits[0] } 

  permutations = input_digits.permutation.to_a

  permutations.map! { |string_arr| string_arr.join.to_i }.sort!

  result = permutations.index(input) + 1

  permutations[result] == nil ? -1 : permutations[result]

end

p next_num(12) == 21
p next_num(513) == 531
p next_num(2017) == 2071
p next_num(9) == -1
p next_num(111) == -1
p next_num(531) == -1
p next_num(123456789) == 123456798