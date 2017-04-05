# Pseudocode:

# 1. Ask user for their real name
# 2. Store real name in variable
# 3. Split real name by words.
#     a. 
# 4. Split real name by letters.
#     - map vowels to next vowel 
#     - map consonants to next consonant
#     - join letters back together

realname = "Rachel Kerner"


# Swap first and last name
realname.split(" ").reverse

# Replace vowel with next vowel
def vowel_rotate(name)
    vowels = ['a', 'e', 'i', 'o', 'u']

    name = name.split('')
    name_vrotate = name.map { |char|
        if vowels.include?(char)
            vowels.rotate(1)[vowels.index(char)]
        else
            char
        end
    }
    name_vrotate.join
end

p vowel_rotate "aeiouyz"

# Replace consonants with next consonant
def consonant_rotate(name)
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
    capital_consonants =%w[B C D F G H J K L M N P Q R S T V W X Y Z]

    name = name.downcase.split('')

    name_crotate = name.map { |char|
        if consonants.include?(char)
            consonants.rotate(1)[consonants.index(char)]
        else
            char           
        end
    }
    agent_name = name_crotate.join
    agent_name.split.map{ |x| x.capitalize}.join(' ')
end

p consonant_rotate "Rachel Kerner"