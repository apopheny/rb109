# Write a function

# triple_double(num1, num2)

# which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

# If this isn't the case, return 0
# Examples

# triple_double(451999277, 41177722899) == 1
# # num1 has straight triple 999s and  num2 has straight double 99s

# triple_double(1222345, 12345) == 0
# # num1 has straight triple 2s but num2 has only a single 2

# triple_double(12345, 12345) == 0

# triple_double(666789, 12345667) == 1

# Input: two integers
# Output: one integer representing t/f

# Problem: Write a program that receives two integers. If there is a digit repeated in three contiguous places, return 1 if that same digit is repeated twice in the second integer.

# Algorithm
# Define a method, triple_double, which has two parameters, int1 and int2
# Initialize a local variable, triples, to an Array
# Iterate through int1 as a string by character and check to see if it contains a triple of any of its integer strings
#   If it does, save the integer to triples
# Iterate through int2 as a string by character and check to see if it has doubles of any the triples
#   Return 1 if it does
# Return 0

def triple_double(int1, int2)
  triples = []
  int1.to_s.chars.uniq.each do |char|
    triples << char if int1.to_s.include?(char * 3)
  end
  triples.each do |char|
    return 1 if int2.to_s.include?(char * 2)
  end
  0
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0