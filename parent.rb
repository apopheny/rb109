# Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

# Legend:
# -Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
# -Function input: String contains only letters, uppercase letters are unique.

# Task:
# Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb". 


# Input: A string
# Output: A string

# Problem: Write a program that receives a string of lowercase and capital letters. The program should return the same string in alphabetical order, with capital letters preceding lowercase letters within their order.

# Algorithm:
# Define a method find_children with one parameter, string
# Initialize a local variable, result, to an empty string
# Assign the downcased unique string characters to an alphabetical array
# Iterate through the array:
#   If the string has the uppercase version of an element:
#     Push the uppercase version of the element + the number of lowercase elements to result
#   Otherwise push the number of lowercase elements to result
# Return result

def find_children(string)
  result = ''
  string.downcase.chars.uniq.sort.each do |char|
    if string.include?(char.upcase)
      result << char.upcase + char * string.count(char)
    else
      result << char * string.count(char)
    end
  end
  result
end

p find_children("abBA") =="AaBb"
p find_children("AaaaaZazzz") =="AaaaaaZzzz"
p find_children("CbcBcbaA") =="AaBbbCcc"
p find_children("xXfuUuuF") =="FfUuuuXx"
p find_children("") =="" # return empty string if argument is empty string