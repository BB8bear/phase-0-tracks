# class Santa
#     attr_reader :ethnicity, :reindeer_ranking
#     attr_accessor :age, :gender

#     def initialize(gender, ethnicity, age)
#         p "Initializing Santa instance..."
#         @gender = gender
#         @ethnicity = ethnicity
#         @age = age
#         @reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
#     end  

#     def speak
#         p "Ho, ho, ho! Haaaappy holidays!"
#     end

#     def eat_milk_and_cookies(cookie_type)
#         p "That was a good #{cookie_type} cookie!"
#     end

#     def celebrate_birthday
#         @age + 1
#     end

#     def gets_mad_at(reindeer_name)
#         reindeer_ranking.delete(reindeer_name)
#         reindeer_ranking << reindeer_name
#     end

# # # getter methods for attributes
# #     def gender 
# #         @gender
# #     end

# #     def age 
# #         @age 
# #     end

# #     def ethnicity 
# #         @ethnicity 
# #     end

# #     def reindeer_ranking
# #         @reindeer_ranking 
# #     end

# #     # setter methods for attributes
# #     def gender=(new_gender)
# #         @gender = new_gender
# #     end

# #     def reindeer_ranking=(new_reindeer_ranking)
# #         @reindeer_ranking = new_reindeer_ranking
# #     end
  
# end

# santas = []
# genderArray = ['agender', 'female', 'bigender', 'male', 'gender fluid', 'transgender']
# ethnicityArray = ['Black', 'Latino', 'White', 'Pacific Islander', 'Native American', 'Alaska Native']
# ageArray = [30, 21, 18, 7, 50, 87]

# # Tests santa array initialization
# puts "Testing Santas array..."
# puts " "
# genderArray.length.times do |i|
#     santas << Santa.new(genderArray[i], ethnicityArray[i], ageArray[i])
#     if i == 0 
#       puts "There is now #{santas.length} Santa instance in the array."
#     else 
#       puts "There are now #{santas.length} Santa instances in the array."
#     end
# end

# # Prints each santa's instance number, gender, ethnicity, and age.
# santas.length.times do |i|
#   puts "Santa instance ##{santas.length} is a #{santas[i].gender} #{santas[i].ethnicity} who is #{santas[i].age} years old."
# end

# # Tests reindeer_ranking functionality
# santa = Santa.new('agender', 'Black', '30')
# santa.gets_mad_at('Dasher')
# puts "The #{santa.gender} #{santa.ethnicity} #{santa.age} year old Santa gets mad at #{santa.reindeer_ranking[-1]}"


# # Tests getter methods
# santas.length.times do |i|
#     puts santas[i].age
#     puts santas[i].ethnicity
#     puts santas[i].reindeer_ranking
# end

# santas.length.times do |i|
#   puts "The #{santas[i].gender} #{santas[i].ethnicity} #{santas[i].age} year old Santa turns #{santas[i].celebrate_birthday} next year."
# end

# Release 4

class Santa
    attr_reader :ethnicity, :reindeer_ranking
    attr_accessor :age, :gender

    def initialize(gender, ethnicity, age)
        p "Initializing Santa instance..."
        @gender = gender
        @ethnicity = ethnicity
        @age = age
        @reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    end  

    def speak
        p "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
        p "That was a good #{cookie_type} cookie!"
    end

    def celebrate_birthday
        @age + 1
    end

    def gets_mad_at(reindeer_name)
        reindeer_ranking.delete(reindeer_name)
        reindeer_ranking << reindeer_name
    end
end


santas = []

genderArray = ['agender', 'female', 'bigender', 'male', 'gender fluid', 'transgender']
ethnicityArray = ['Black', 'Latino', 'White', 'Pacific Islander', 'Native American', 'Alaska Native']

# Method to pull a random item from an array
def random(array)
    array.sample
end

# Method to return a random age between 1 and 140
def randomAge
  (1..140).to_a.sample
end 
