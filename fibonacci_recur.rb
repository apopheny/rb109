
# Fibonacci Numbers (Recursion)

# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself. For example:

# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

# sum is a recursive method that computes the sum of all integers between 1 and n.

# Recursive methods have three primary qualities:

#     They call themselves at least once.
#     They have a condition that stops the recursion (n == 1 above).
#     They use the result returned by themselves.

# In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

# If you find yourself struggling to understand recursion, see this forum post. It's worth the effort learning to use recursion.

# That said, this exercise is a lead-in for the next two exercises. It verges on the Advanced level, so don't worry or get discouraged if you can't do it on your own. Recursion is tricky, and even experienced developers can have trouble dealing with it.

# Examples:

# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# Input: an integer
# Output: an integer

# Problem: Write a program that receives an integer representing the nth number in the Fibonacci sequence. The program should call itself.

# Algorithm
# Define a method, fibonacci, with one parameter, int
# Initialize a local variable, fib_sequence, to an array
# ... I don't understand recursion yet.


# 1 1 2 3 5 8 13 21 34 55 89 144


# def fibonacci(int)
#   if int <= 2
#     1
#   else
#     fibonacci(int -2) + fibonacci(int - 1)
#   end
# end
  
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(8210)