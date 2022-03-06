# In this Kata, you will be given two integers n and k and your task is to remove k-digits from n and return the lowest number possible, without changing the order of the digits in n. Return the result as a string.

# Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 and return the lowest possible number. The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.

# Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', because we have removed 8 and 9.

# More examples in the test cases.

# Input: two integers
# Output: a string integer

# Problem: Write a program that receives two integers and returns a string integer that is the smallest result of removing the second number of integers from the first. 

# Algorithm
# Define a method, solve, which has two parameters, int & removed
# Iterate through the an array of int converted to a string
#   Delete all permutations of removing `removed` index positions
#   return the smallest array joined as a string, smallest being defined as having the smallest value when converted to an integer

# Issues: What about a digit that has the same number in it more than once?
#   A: Delete at an index position rather than by value


def solve(int, removed)
  result = int.to_s
  int_arr = int.to_s.chars
  combinations = (0...int_arr.size).to_a.permutation(removed).to_a
  combinations.each do |indices|
    until indices.empty?
      int_arr.delete_at(indices.pop)
      result = int_arr.join if int_arr.join.to_i < result.to_i
    end
    int_arr = int.to_s.chars
  end
  result
end

p solve(123056,1) =='12056'
p solve(123056,2) =='1056'
p solve(123056,3) =='056'
p solve(123056,4) =='05'
p solve(1284569,1) =='124569'
p solve(1284569,2) =='12456'
p solve(1284569,3) =='1245'
p solve(1284569,4) =='124'