class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

class Puppy

  def fetch(toy)
  puts "I brought back the #{toy}!"
  toy
  end
   
  def speak(number_of_times)
  puts "woof! " * number_of_times
  end
   
  def roll_over
  puts "*rolls over*"
  end 
   
  def dog_years(human_years)
  puts "Gaston is #{(human_years * 7)}"
  end
   
  def flippyfloppity
  puts "yo quiero taco bell!"
  end
   
  def initialize
  puts "Initializing new puppy instance..."
  end
   
end

# gaston = Puppy.new 
# gaston.fetch("bigbone")
# gaston.speak(12)
# gaston.roll_over
# gaston.dog_years(2)
# gaston.flippyfloppity


class Cat
  
  def initialize
    puts "Initializing new cat instance..."
  end
  
  def meow(times_to_meow)
    puts "Meow! " * times_to_meow 
  end
  
end

# Zig = Cat.new 
# Princess = Cat.new

# Princess.meow(20)

box_of_cats = []
names_of_cats = ['a', 'b', 'c', 'd', 'e']

names_of_cats.each do |instance|
  instance = Cat.new
  box_of_cats.push(instance)
end

box_of_cats.each do |trick|
  trick.meow(4)
end

p box_of_cats