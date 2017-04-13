# Release 2

# Flight module
module Flight

    # Take off method
    def take_off(altitude)
        puts "Taking off and ascending until reaching #{altitude} ..."
    end
end



# Bird class
class Bird
    include Flight
end

# Plane class
class Plane
    include Flight
end

bird = Bird.new
p bird.take_off(800)

plane = Plane.new
p plane.take_off(30000)

