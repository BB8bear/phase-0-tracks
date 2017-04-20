# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require - needs an absolute path from root, working with external sources like gems and libraries
# require_relative - can use relative path to file, working with your own code
require_relative 'state_data'

class VirusPredictor

# initialize method - takes input variables and assigns them to class variables for each instance of VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



# method virus_effects - 
# runs predicted_deaths method using the instance variables given
# runs speed_of_spread method using the instance variables given
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

private # can only be used within the class  

# method predicted_deaths - takes variables:
# uses population_density to decide which density calculation to use
# uses population variable to caluclate the number_of_deaths 
# uses state variable when printing the result
# calculates number_of_deaths using population and uses .floor to round down the result
# prints final results based on population density category
  def predicted_deaths  # removed variables because they exist in initialize/instance variables
    # predicted deaths is solely based on population density
    population_scaling = 0 #create variable to store scaling for calculating number_of_deaths
    # instead of running the number_of_deaths caluclation for every population density

    if @population_density >= 200
      population_scaling = 0.4
    elsif @population_density >= 150
      population_scaling = 0.3
    elsif @population_density >= 100
      population_scaling = 0.2
    elsif @population_density >= 50
      population_scaling = 0.1
    else
      population_scaling = 0.05
    end

    number_of_deaths = (@population * population_scaling).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# method speed_of_spread - takes variables:
# uses population_density to decide which speed calculation to use
# uses state variable is currently not being used
  def speed_of_spread #in months. removed variables because they exist in initialize/instance variables
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# Make a loop that iterates over every key in STATE_DATA hash
# for each iteration, create a report for that state using .virus_effects

STATE_DATA.each do |state, population_information|
  new_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  new_state.virus_effects
end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The first hash syntax has a string as a key, because you want to print it within the my_solution file. 
  # The second hash has a symbol as a key, because you do not need to print it within the my_solution file.

# What does require_relative do? How is it different from require?
  # require_relative finds the called file relative to the current file, best to use when working with your own code
  # require needs an absolute path from root, is best to use for external sources like libraries

# What are some ways to iterate through a hash?
  # You can iterate through a hash based on key/value pair with .each {|k,v| block}
  # You can iterate through a hash based on each key with .each_key {|k| block}
  # You can iterate through a hash based on each key but using the value as the parameter with .each_key {|v| block}

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # virus_effects was not using state at all within the method, and all of the passed in variables were not necessary because the method was using instance variable calls

# What concept did you most solidify in this challenge?
  # I most solidifed the concept of private vs public methods, and relative vs require_relative