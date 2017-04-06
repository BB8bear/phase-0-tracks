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
  
  p name = name.downcase.split('')
  
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

p name_rotate "Felicia Torres"