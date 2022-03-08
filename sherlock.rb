# Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# } 

# Write method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

# Input: A Hash, an array of integers
# Output: an array of symbols

# Problem: Write a program which receives two arguments: First, a Hash with symbol keys representing people and values which are arrays of integers representing the pockets in which they store items. Second, an array of integers representing the pockets in which items are allowed to be stored. If any of the people have items in pockets other than those allowed, return their symbol-names in an array. Return nil if no suspects are caught.

# Algorithm:
# Define a method, find_suspects, with two parameters, suspects & allowed_pockets
# Initialize a local variable, result, to an empty array
# Iterate through suspects:
#   If their values have integers that are not included in allowed_pockets, store their name in result
# Return result

def find_suspects(suspects, allowed_pockets)
  result = []
  suspects.each do |name, pockets|
    next if pockets == nil
    result << name unless pockets.all? { |full_pocket| allowed_pockets.include?(full_pocket) }
  end
  return nil if result.empty?
  result
end

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

# p find_suspects(pockets, [1, 2]) == [:tom, :jane]
# p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
# p find_suspects(pockets, [7]) == [:bob, :tom]
