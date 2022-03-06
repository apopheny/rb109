# Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were the same number. I cried a little.

# Complete the method that takes a hash/object/directory/association list of users, and find the nexus: the user whose rank is the closest is equal to his honor. Return the rank of this user. For each user, the key is the rank and the value is the honor.

# If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who come closest, return the one with the lowest rank (numeric value). The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.
# Example

#          rank    honor
# users = {  1  =>  93,
#           10  =>  55,
#           15  =>  30,
#           20  =>  19,    <--- nexus
#           23  =>  11,
#           30  =>   2 }

# Input: A Hash
# Output: An Integer

# Problem: Write a program that receives a hash and returns the key of the pair with the smallest difference between the key and value.

# Algorithm:
# Define a method, nexus, with one parameter, hash
# Initialize a variable, differences, to an array containing the total of the hash
# Initialize a variable, result, to nil
# Iterate through hash
#   If the difference is smaller than the smallest number in differences, reassign result to the key
# Return result

# Helper method
#   subtract key and value, and multiply by -1 if negative

def nexus(hash)
  differences = hash.to_a.flatten.sum
  result = differences[0]
  hash.each do |key, value|
    result = key if difference(key, value) < differences
    differences = difference(key, value) if difference(key, value) < differences
    if difference(key, value) == differences
      result = key if key < result
    end
  end
  result
end

def difference(key, value)
  key >= value ? key - value : value - key
end

users = {1 => 3, 3 => 3, 5 => 1}
p nexus(users) == 3

users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
p nexus(users) == 3