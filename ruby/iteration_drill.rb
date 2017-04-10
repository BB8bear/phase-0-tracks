# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

zombie_apocalypse_supplies.each { |item|
    print item + " * "
}

# ----

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

sorted_array = []

while zombie_apocalypse_supplies.length > 0
    lowest_item = zombie_apocalypse_supplies[0]

    zombie_apocalypse_supplies.each { |current_item|
        if current_item.downcase < lowest_item.downcase
            lowest_item = current_item
        end 
    }

    sorted_array << lowest_item
    zombie_apocalypse_supplies.delete(lowest_item)

end

p sorted_array

# ----

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def does_exist(array, string)
  array.each { |item|
    if item == string 
      puts "'#{string}' is in your list of supplies"
      return
    end
  }
  puts "'#{string}' is not in your list of supplies"
end

does_exist(zombie_apocalypse_supplies, "hatchet") 
does_exist(zombie_apocalypse_supplies, "boots")

# ----

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

until zombie_apocalypse_supplies.length <= 5
    zombie_apocalypse_supplies.delete_at(0)
end

# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

p zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq

p zombie_apocalypse_supplies | other_survivor_supplies

# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

extinct_animals.each_with_index { |(key, value), index|
  if index > 0 
    print " * "
  end
  print "#{key} - #{value}"
}

# OR 

first = TRUE

extinct_animals.each { |key, value|
  if first 
    first = FALSE
  else 
    print " * "
  end
  print "#{key} - #{value}"
}

# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

extinct_before_2000 = {}

extinct_animals.each { |key, value| 
    if value < 2000
        extinct_before_2000[key] = value
    end
}

p extinct_before_2000

# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

minus_three = {}

extinct_animals.each { |key, value|
    minus_three[key] = value + 3
}

p minus_three

# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

animals_to_check = ["Andean Cat", "Dodo", "Saiga Antelope"]

def is_it_included(hash, animal)
    hash.each { |key, value|
        if key == animal 
            return "#{animal} is extinct."
        end
    }
    return "#{animal} is not extinct."
end

animals_to_check.each { |to_check| 
    p is_it_included(extinct_animals, to_check)
}

# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

p extinct_animals.assoc("Passenger Pigeon")
extinct_animals.delete("Passenger Pigeon")

# ----
