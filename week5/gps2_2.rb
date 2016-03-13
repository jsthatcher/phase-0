# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a new hash
  # Separate the strings
  # set the default quantity to 1
  # pass strings to hash using string as keys and quantity as value
  # print the list to the console [can you use one of your other methods here?]
# output: hash



def grocery_list(items)
  hash = Hash.new
  default = 1
  items.split(' ').each { |item|
    hash[item] = default }
  hash
end




# Method to add an item to a list
# input: item name and optional quantity, and the list
# steps:add grocery item and quantity to the end of the list
# output: updated list 

def add_item(list, item, quantity=1)
  list[item] = quantity
  p list
end
  
  
# Method to remove an item from the list
# input: item and list
# steps: remove item using key word
# output:

def remove_item(list,item)
  list.delete(item)
  p list
end


# Method to update the quantity of an item
# input: item and new quantity, list
# steps: update quantity  
# output: grocery list with updated quantity

def update_quantity(list,item,quantity)
list[item]= quantity
 p list
end


# Method to print a list and make it look pretty
# input: the grocery list
# steps: print out each iteam and quantity
# output: Each item and quantity on the list

def print_list(list)
  list.each {|item,quantity| puts "#{item}: #{quantity}"}
end



my_shoppinglist = grocery_list("carrots apples cereal pizza")
add_item(my_shoppinglist, "Lemonade", 2)
add_item(my_shoppinglist, "Tomatoes", 3)
add_item(my_shoppinglist, "Onion", 1)
add_item(my_shoppinglist, "Ice Cream", 4)
print_list(my_shoppinglist)
remove_item(my_shoppinglist, "Lemonade")
print_list(my_shoppinglist)
update_quantity(my_shoppinglist, "Ice Cream" , 1)
print_list(my_shoppinglist)

=begin
What did you learn about pseudocode from working on this challenge?
Pseudocode was very simple for this challenge because the methods were so small

What are the tradeoffs of using Arrays and Hashes for this challenge?
Hashes worked best because we could access values through keywords

What does a method return?
The last variable in the code

What kind of things can you pass into methods as arguments?
You can pass in all variables as well as structures like arrays or hashes

How can you pass information between methods?
Storing the hash in a variable allowed us save the changes we made to it.

What concepts were solidified in this challenge, and what concepts are still confusing? 
This definitely helped me in my understanding of hashes.
=end



