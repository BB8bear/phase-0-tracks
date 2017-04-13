# # Release 1

# module Shout
#     # Method for yelling angrily
#     def self.yell_angrily(words)
#         words + "!!!" + " :("
#     end

#     # Method for yelling happily
#     def self.yell_happily(words)
#         words + "!!!" + " :)"
#     end

# end

# p Shout.yell_happily("I love cats")
# p Shout.yell_angrily("I hate spiders")

# Release 3

module Shout
    # Method for yelling angrily
    def yell_angrily(words)
        words + "!!!" + " :("
    end

    # Method for yelling happily
    def yell_happily(words)
        words + "!!!" + " :)"
    end
end

 class Person
        include Shout
    end

class Goat
    include Shout
end

chris = Person.new
p chris.yell_angrily("I hate boring food")
p chris.yell_happily("I love spicy food")

billy = Goat.new
p billy.yell_happily("MAAAAH")
p billy.yell_angrily("MAAAAH MAAAAAAAAH")