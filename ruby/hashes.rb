# Pseudocode:

# 1. Create an empty hash
# 2. Ask for client name
# 3. Add input in the hash
# 4. Ask for client age
# 5. Add age input in the same hash
# 6. Ask for number of client children
# 7. Add number of children in the same hash
# 8. Ask for decor theme
# 9. Add decor theme to the hash
# 10. Ask for least favorite color
# 11. Add color preference to hash
# 12. Print hash back to user once all questions have been answered
# 13. Ask user if they need to update a key
#   a. If key needs to be updated, ask user which key to update.
#       - Ask user what they want to update key value with
#   b. If key does not need to be updated, print has back to user.
# 14. Print hash back to user once all questions have been answered and updates are done

client_preferences = {
    name: nil,
    age: nil,
    num_children: nil,
    decor_theme: nil,
    avoid_color: nil,
}

puts "Please enter the following client details."
puts "Client name:"
client_preferences[:name] = gets.chomp.to_str
puts "Client age:"
client_preferences[:age] = gets.chomp.to_i
puts "Number of client children:"
client_preferences[:num_children] = gets.chomp.to_i
puts "Decor theme:"
client_preferences[:decor_theme] = gets.chomp.to_str
puts "Least favorite color:"
client_preferences[:avoid_color] = gets.chomp.to_str

p client_preferences

puts "Do you need to update a key?"
input = gets.chomp

if input == "none"
    p client_preferences
elsif input == "yes" 
    puts "Please enter which key you would like to update."
    key = gets.chomp.to_sym
    if client_preferences.include?(key) == true
        puts "What would you like to update #{key} with?"
        client_preferences[key] = gets.chomp.to_str
    else 
        puts "Error, key not found."
    end
else
    puts "Error, invalid answer."
end

p client_preferences
