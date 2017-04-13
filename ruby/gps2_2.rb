# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1. Create an empty hash and define it
  # 2. Add items to the hash from the list
  # 3. Set default quantity for all items in the list to 0
  # 4. Print the list to the console with Print a List method below
# output: Hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
  # 1. Add new key and value to the hash
  # 2. Print the list to the console with the Print a List method below
# output: Hash with updated keys and values

# Method to remove an item from the list
# input: list, item name
# steps:
  # 1. Find the item in the list by key
  # 2. Delete the key from the hash (quantity will be removed along with the key)
  # 3. Print the list to the console with the Print a List method below
# output: Hash with remaining keys and values

# Method to update the quantity of an item
# input: list, item name, and quantity to update
# steps:
  # 1. Find the item in the list by key
  # 2. Reassign value by accessing key(item)
  # 3. Print the list to the console with the Print a List method below
# output: Hash with updated keys and values

# Method to print a list and make it look pretty
# input: list
# steps: 
  # 1. Give list a title "Grocery List"
  # 2. Add padding space below the title " "
  # 3. Iterate over the list hash for each item "Item qty 1."
# output: Printed list using the hash values