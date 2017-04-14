# grocery_list = "carrots apples cereal pizza bananas celery"
grocery_list = "Lemonade, Tomatoes, Onions, Ice Cream"

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1. Create an empty hash and define it
  # 2. Add items to the hash from the list
  # 3. Set default quantity for all items in the list to 0
  # 4. Print the list to the console with Print a List method below
# output: Hash

def create_list(list)
    grocery_items = {}
    new_list = list.split(%r{,\s*})

    new_list.each do |item|
        grocery_items[item] = 0
    end
    grocery_items
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
  # 1. Add new key and value to the hash
  # 2. Print the list to the console with the Print a List method below
# output: Hash with updated keys and values

grocery_items = create_list(grocery_list)
def add_item(hash, item_name, quantity = 0)
    hash[item_name] = quantity
    hash
end

# p add_item(grocery_items, "peanut butter")
# p grocery_items



# Method to remove an item from the list
# input: list, item name
# steps:
  # 1. Find the item in the list by key
  # 2. Delete the key from the hash (quantity will be removed along with the key)
  # 3. Print the list to the console with the Print a List method below
# output: Hash with remaining keys and values

def remove_item(hash, item_name)
  hash.delete(item_name)
  hash
end

# p remove_item(grocery_items, "celery")
# p grocery_items


# Method to update the quantity of an item
# input: list, item name, and quantity to update
# steps:
  # 1. Find the item in the list by key
  # 2. Reassign value by accessing key(item)
  # 3. Print the list to the console with the Print a List method below
# output: Hash with updated keys and values

def update_quantity(hash, item_name, quantity)
  hash[item_name] = quantity
  hash
end

# p update_quantity(grocery_items, "apples", 7)
# p grocery_items


# Method to print a list and make it look pretty
# input: list
# steps: 
  # 1. Give list a title "Grocery List"
  # 2. Add padding space below the title " "
  # 3. Iterate over the list hash for each item "Item qty 1."
# output: Printed list using the hash values

def pretty_list(hash)
  puts "Grocery List:"
  puts " "
  hash.each do |item_name, quantity|
    puts "#{item_name}: #{quantity}"
  end
end

# p pretty_list(grocery_items)



##-- RELEASE 2: TEST YOUR SOLUTION --##
puts "Here is our grocery list"
p create_list(grocery_list)

puts "Updated quantity for grocery list:"
p update_quantity(grocery_items, "Lemonade", 2)
p update_quantity(grocery_items, "Tomatoes", 3)
p update_quantity(grocery_items, "Onions", 1)
p update_quantity(grocery_items, "Ice Cream", 4)

puts "Removing Lemonade from list:"
p remove_item(grocery_items, "Lemonade")

puts "Update Ice Cream quantity"
p update_quantity(grocery_items, "Ice Cream", 1)

p pretty_list(grocery_items)

=begin
  
What did you learn about pseudocode from working on this challenge?
    I learned that pseudocode, when done well, really helps you break down the steps of your program to make it more manageable.

What are the tradeoffs of using arrays and hashes for this challenge?
    Taking an array and turning it into a hash allows the user input to be a simple string, though it seems like it might be easier to start with a hash.

What does a method return?
    The result of the last evaluated statement.

What kind of things can you pass into methods as arguments?
    Strings, numbers, hashes, arrays, or other variables.

How can you pass information between methods?
    If you keep them outside of the method you can pass them in as an argument and make them accessible for all methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
    Practicing pseudocode was really helpful in this challenge, and I feel like the concept of passing arguments into methods is something I understand better now.
  
=end