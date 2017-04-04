application = {
name: "Joe Bob",
address: "123 Street Pl Chicago, IL 60402",
email: "joebob@gmail.com",
phone: "309-123-4567",
fav_blue: "indigo",
wallpaper_preference: "Paisley",
ombre_opinion: "Fierce"
}

puts "Are you sure? What is your favorite shade of blue, REALLY?"
application[:fav_blue] = gets.chomp

application[:name] = "Joseph Bob"

application[:name] = :ombre_opinion
p application[:name]

# p application[:name] + application[:address]
p application
