puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birthyear = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
wantgarlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
healthinsurance = gets.chomp

def is_age_correct
    if (2017 - birthtear) == age
    correct_age = true
    else 
    correct_age = false
    end
end

case is_a_vampire?
    when correct_age == true
        && when wantgarlic == "yes" 
        && when healthinsurance == "yes"
        puts "Probably not a vampire."
    when correct_age == false
        && when wantgarlic == "no",
        && when healthinsurance == "no"
        puts "Almost certainly a vampire"
    when name == "Drake Cula"
        || name == "Tu Fang"
        puts "Definitely a vampire"
    else 
        puts "Results inconclusive."
end