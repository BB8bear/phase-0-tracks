# Encrypt Pseudocode
# 1. Set index variable counter to 0 so it will match index
# 2. Create a loop that runs for each letter in the string
#   a. Take the input for the first index spot and use .next to get the following character
# 3. Increase the index count to get to the next character in the string
# 4. Repeat until end of string
# 5. Print the final result

# Encrypt method
def encrypt(str)
index = 0 
while index < str.length
  if str[index] == "z"
    str[index] = "a"
  else 
    str[index] = str[index].next
  end 
  index += 1 
end
puts "#{str}"
return str 
end 


# Decrypt Pseudocode
# 1. Set the entire alphabet so we have a string to work from
# 2. Set index variable counter to 0 so it will match index
# 3. Create a loop that runs for each letter in the string
#   a. Take the input character and assign it to the previous character by finding it within the alphabet variable and moving one space back
# 4. Increase the index count to get to the next character in the string
# 5. Repeat until end of string
# 6. Print the final result

# Decrypt method
def decrypt(str)
alphabet = "abcdefghijklmnopqrstuvwxyz"
index = 0 
while index < str.length
  str[index] = alphabet[alphabet.index(str[index])-1]
  index += 1 
end
puts "#{str}"
return str 
end 

# Ask the user whether they would like to encrypt or decrypt
puts "Would you like to decrypt or encrypt a password?"
input = gets.chomp

# asks for the password
puts "What is the password?"
password = gets.chomp 

# either encrypts or decrypts the password
if input == "encrypt"
  puts encrypt(password)
elsif input == "decrypt" 
  puts decrypt(password)
else
  puts "Error"
end

# Test cases
# encrypt("abc") 
# encrypt("zed") 
# decrypt("bcd") 
# decrypt("afe")