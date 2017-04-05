
# Release 0 - Write Your Own Method That Takes a Block
def this_method
  puts "Hello how are you?"
 yield("Sucky")
end

this_method { |response| puts "#{response} ...that's too bad!" }


# Release 2 Do The Thing

# 1. Array
cereal = ['Frosted Flakes', 'Cheerios', 'Pops', 'Wheaties']

# Hash
animal_babies = {
    "Cat" => "Kitten",
    "Dog" => "Puppy",
    "Goat" => "Kid"
}

# 2. Iterate through array using .each
cereal.each do |i| 
    puts "I like to eat #{i} for breakfast."
end

# Iterate through hash using each
animal_babies.each do |parent, baby|
    puts "A #{parent} has a #{baby}."
end

# Iterate through array using map!
cereal.map! do |i|
    puts i.upcase
end

# Release 2 Do The Thing

# Array for release 2
DTT = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 1. A method that iterates through the items and deletes any that meet a condition, less than 5
DTT.delete_if do |i|
    i < 5
end

# 2. A method that filters for items that do satisfy a certain condition, less than 5
DTT.keep_if do |i|
    i < 5
end

# 3. A different method that filters for items satisfying a certain condition, if even
DTT.select { |i|
    i.even?
}

# 4. A method that will remove items until condition evaluates false, then stops
DTT.drop_while do |i|
    i < 5

# Hash for release 2
DTT = {
    "Cat" => "Kitten",
    "Dog" => "Puppy",
    "Goat" => "Kid",
    "Kangaroo" => "Joey"
}

# 1. A method that iterates through the items and deletes any that meet a condition, if animal is before Goat in the hash
DTT.delete_if { |animal, baby| 
    animal >= "Goat"
}

# 2. A method that filters for items that do satisfy a certain condition, if value is Kid
DTT.keep_if { |animal, baby|
    baby == "Kid"
}

# 3. A different method that filters for items satisfying a certain condition, remove anything before Dog key in the hash
DTT.reject { |animal, baby|
    animal < "Dog"
}