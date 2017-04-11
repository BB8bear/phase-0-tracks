class Santa
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

  def reindeer_ranking
    return @reindeer_ranking
  end

  def gender 
    @gender
  end
  
  def age 
    @age 
  end
  
  def ethnicity 
    @ethnicity 
  end

  def gender=(new_gender)
    @gender = new_gender
  end
  
  def reindeer_ranking
    @reindeer_ranking 
  end
  
  def reindeer_ranking=(new_reindeer_ranking)
    @reindeer_ranking = new_reindeer_ranking
  end
end

santas = []
genderArray = ['agender', 'female', 'bigender', 'male', 'gender fluid', 'transgender']
ethnicityArray = ['Black', 'Latino', 'White', 'Pacific Islander', 'Native American', 'Alaska Native']
ageArray = [30, 21, 18, 7, 50, 87]

puts "Testing Santas array..."
puts " "
genderArray.length.times do |i|
    santas << Santa.new(genderArray[i], ethnicityArray[i], ageArray[i])
    if i == 0 
      puts "There is now #{santas.length} Santa instance in the array."
    else 
      puts "There are now #{santas.length} Santa instances in the array."
    end
    
    puts "Santa instance ##{santas.length} is a #{ethnicityArray[i]} #{genderArray[i]} #{ageArray[i]} years old."
    puts " "
    puts "-----"
    puts " "
end


santa = Santa.new('agender', 'Black', '30')
santa.gets_mad_at('Dasher')
puts "Thr #{santa.gender} #{santa.ethnicity} #{santa.age} year old Santa gets mad at #{santa.reindeer_ranking[-1]}"
# p santa.reindeer_ranking

puts santa.age
puts santa.ethnicity