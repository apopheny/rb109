# Write a program which receives one parameter:  a hash which represents filtering criteria. It will be used to filter an array with a hash which represents an inventory stocklist, containing the name of an item and its price. The program should apply the filtering criteria to the array and return those items which meet the criteria

# Input: An array of hashes, and a hash
# Output: An Aray of hashes representing the subset of the input array which meets the filtering criteria of the input hash

# Data structures: An array to which elements meeting the criteria are stored

# Algorithm
# Define a method, product_filter, which takes one parameter, query
# Query consists of a minimum price, a maximum price, and the first word of the item name.
# Iterate through PRODUCTS
#   Select items for which:
#    the price is <= maximum price 
#    the price is  >= minimum price
#    the name separated into an array of downcased substrings includes the query name downcased
# Return these items

PRODUCTS = [
  { name: 'Thinkpad x210', price: 220},
  { name: 'Thinkpad x220', price: 250},
  { name: 'Thinkpad x250', price: 979},
  { name: 'Thinkpad x230', price: 300},
  { name: 'Thinkpad x230', price: 330},
  { name: 'Thinkpad x230', price: 350},
  { name: 'Thinkpad x240', price: 700},
  { name: 'Macbook Leopard', price: 300},
  { name: 'Macbook Air', price: 700},
  { name: 'Macbook Pro', price: 600},
  { name: 'Macbook', price: 1449},
  { name: 'Dell Latitude', price: 200},
  { name: 'Dell Latitude', price: 650},
  { name: 'Dell Inspiron', price: 300},
  { name: 'Dell Inspiron', price: 450},
]

query1 = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def product_filter(query)
  PRODUCTS.select do |item|
    item[:name].downcase.split.include?(query[:q.downcase]) &&
    item[:price] >= query[:price_min] &&
    item[:price] <= query[:price_max]
  end
end

p product_filter(query1)
p product_filter(query2)
