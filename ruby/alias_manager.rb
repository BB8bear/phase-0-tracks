# Pseudocode:

# 1. Ask user for their real name
# 2. Store real name in variable
# 3. Split real name by words.
#     a. 
# 4. Split real name by letters.
#     - map vowels to next vowel 
#     - map consonants to next consonant
#     - join letters back together


def name_rotate(name)
  consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
  vowels = ['a', 'e', 'i', 'o', 'u']
  
  name = name.downcase.split('')
  
  name_rotate = name.map { |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    elsif consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  }
  
  name_rotate.join.split(' ').reverse.map { |x| x.capitalize }.join(' ')
end

# p name_rotate "Felicia Torres"

puts "Please enter a name to get a fake name back. Enter 'quit' to exit the program."
name = gets.chomp.to_s
alias_array = Hash.new

while name != 'quit'
    puts name_rotate(name)
    alias_array[name] = name_rotate(name)
    puts "Please enter a name to get a fake name back. Enter 'quit' to exit the program."
    name = gets.chomp.to_s
end 

alias_array.each do 
  |n, a| puts "#{a} is actually #{n}"
end 


