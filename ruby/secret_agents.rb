def decrypt(str)
alphabet = "abcdefghijklmnopqrstuvwxyz"
index = 0 
while index < str.length
  char = str[index]
  str[index] = alphabet[alphabet.index(char)-1]
  index += 1 
end
puts "#{str}"
return str 
end 

def encrypt(str)
alphabet = "abcdefghijklmnopqrstuvwxyz"
index = 0 
while index < str.length
  char = str[index]
  if char == "z"
    str[index] = "a"
  else 
    str[index] = alphabet[alphabet.index(char)+1]
  end 
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