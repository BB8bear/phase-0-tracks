# Release 1

odule Shout
    # Method for yelling angrily
    def self.yell_angrily(words)
        words + "!!!" + " :("
    end

    # Method for yelling happily
    def self.yell_happily(words)
        words + "!!!" + " :)"
    end

end

p Shout.yell_happily("I love cats")
p Shout.yell_angrily("I hate spiders")
