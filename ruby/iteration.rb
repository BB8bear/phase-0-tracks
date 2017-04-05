cereal = ['Frosted Flakes', 'Cheerios', 'Pops', 'Wheaties']

animal_babies = {
    "Cat" => "Kitten",
    "Dog" => "Puppy",
    "Goat" => "Kid"
}

cereal.each do |i| 
    puts "I like to eat #{i} for breakfast."
end

cereal.map! do |i|
    puts i.upcase
end

animal_babies.each do |parent, baby|
    puts "A #{parent} has a #{baby}."
end

DTT = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

DTT.drop_while do |i| 
    i < 5
end 

DTT.keep_if do |i|
    i < 5
end

DTT.select { |i|
    i.even?
}

DTT.delete_if do |i|
    i >= 8
end

DTT = {
    "Cat" => "Kitten",
    "Dog" => "Puppy",
    "Goat" => "Kid",
    "Kangaroo" => "Joey"
}

DTT.delete_if { |animal, baby| 
    animal >= "Goat"
}

p DTT

DTT.keep_if { |animal, baby|
    baby == "Kid"
}

p DTT

DTT.reject { |animal, baby|
    animal < "Dog"
}

p DTT