# You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

#     Note: you will always receive a valid array (string in COBOL) containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

def is_valid_walk(str_arr)
  return true if str_arr.empty?
  y_distance = 0
  x_distance = 0
  str_arr.each do |direction| 
    y_distance += 1 if direction == 'n'
    y_distance -= 1 if direction == 's'
    x_distance += 1 if direction == 'e'
    x_distance -= 1 if direction == 'w'
  end
  x_distance == 0 && y_distance == 0 && str_arr.size == 10
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false