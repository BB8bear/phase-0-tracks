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
    GENDER_ARRAY = ['agender', 'female', 'bigender', 'male', 'gender fluid', 'transgender']
    ETHNICITY_ARRAY = ['African American', 'Latino', 'Caucasian', 'Pacific Islander', 'Native American', 'Alaska Native']

    attr_accessor :age, :gender, :ethnicity

    def initialize
        @gender = ""
        @ethnicity = ""
        @age = 0
    end  

    # Method to return a random age between 1 and 140
    def assign_random_age
        @age = (1..140).to_a.sample
    end
    
    # Method to create a random gender
    def assign_random_gender
        @gender = GENDER_ARRAY.sample
    end
      
    # Method to create random ethnicity
    def assign_random_ethnicity
        
        @ethnicity = ETHNICITY_ARRAY.sample
    end 
end

(1..100).each do |count|
    santa = Santa.new
    santa.assign_random_gender
    santa.assign_random_ethnicity
    santa.assign_random_age
    p "Santa ##{count} is a #{santa.age}-year old #{santa.gender} #{santa.ethnicity}."
end