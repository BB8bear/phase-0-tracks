# Encrypt Pseudocode
# 1. Set index variable counter to 0 so it will match index
# 2. Create a loop that runs for each letter in the string
#   a. take the input for the first index spot and use .next to get the following character
# 3. increase the index count to get to the next character in the string
# 4. repeat until end of string
# 5. Print the final result


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



# def encrypt(str)
# index = 0 
# while index < str.length 
#   str[index] = str[index].next
#   index += 1
# end 
# puts "#{str}"
# end 


encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")