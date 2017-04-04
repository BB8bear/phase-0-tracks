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
:name = gets.chomp.to_str
puts "Client age:"
:age = gets.chomp.to_i
puts "Number of client children:"
:num_children = gets.chomp.to_i
puts "Decor theme:"
:decor_theme = gets.chomp.to_str
puts "Least favorite color:"
:avoid_color = gets.chomp.to_str

p client_preferences

puts "Do you need to update a key?"
input = gets.chomp.to_sym

if input == "none"
    p client_preferences
else 
    if client_preferences.include?(input) == true
        puts "What would you like to update #{input} with?"
        client_preferences[input] = gets.chomp.to_str
    else 
        puts "Error, key not found."
    end
end

p client_preferences
