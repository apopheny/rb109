# Digital root is the recursive sum of all the digits in a number.

# Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
# Examples

#     16  -->  1 + 6 = 7
#    942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
# 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
# 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

# Input: An integer
# Output: An integer

# Problem: Write a program which receives an integer. It should sum the places of the integer repeatedly until the integer is a single digit, and return that digit.

# Algorithm:
# Define a method, digital_root, with one parameter, int
# Until int has a string size of 1:
# -convert int to an array of strings, each element a place in int
# -convert these elements back to integers and sum
# -reassign int to the sum
# Return int once int has a string size of 1

def digital_root(int)
  until int.to_s.size == 1
    int = int.to_s.chars.map(&:to_i).sum
  end
  int
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2
