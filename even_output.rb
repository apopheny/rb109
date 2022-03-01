# Even Numbers

# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

num = 0
99.times do
  num += 1
  puts num if num.even?
end