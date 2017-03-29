puts "How many employees will be processed?"
num_employees = gets.chomp.to_i

while num_employees > 0
  puts "What is your name?"
  name = gets.chomp
  
  if name == "Drake Cula" || name == "Tu Fang"
    vampirename = true
  else
    vampirename = false
  end
  
  puts"How old are you?"
  age = gets.chomp.to_i
  
  puts "What year were you born?"
  birthyear = gets.chomp.to_i
  
  puts realage = 2017 - birthyear
  
  if age == realage
    correct_age = true
  else
    correct_age = false 
  end
  
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  wantgarlic = gets.chomp
  
  if wantgarlic == "yes"
    wantgarlic = true 
  else
    wantgarlic = false
  end
  
  
  puts "Would you like to enroll in the company's health insurance? (yes/no)"
  healthinsurance = gets.chomp
  
  if healthinsurance == "yes"
    healthinsurance = true 
  else 
    healthinsurance = false 
  end 
  
  
  if vampirename
    puts "Definitely a vampire."
  elsif !correct_age && !wantgarlic && !healthinsurance
    puts "Almost certainly a vampire."
  elsif correct_age && wantgarlic || healthinsurance
    puts "Probably not a vampire."
  elsif !correct_age && !wantgarlic || !healthinsurance
    puts "Probably a vampire"
  else 
    puts "Results inconclusive."
  end
  
  num_employees -= 1
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's be friends."
