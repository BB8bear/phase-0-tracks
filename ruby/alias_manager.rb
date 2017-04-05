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