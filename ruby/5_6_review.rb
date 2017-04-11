# Create an array of numbers
# Define a method that takes an array of integers and an integer to search for
# Method needs to arguments
# Argument #1 is the array
# Argument #2 is the integer to search for
# The output is the index within the array if it is there, or nil if it does not exist 

# Create index counter to track index within array during loop
# Add 1 every time the loop completes iteration search to keep index in sync with array spot
# Return index location once integer to search is found


integersArray = [1, 2, 3, 4, 5]

def search_array(array, int)
    index = 0
    array.each do |x|
        if int == x
            return index
        end     
        index += 1
    end
end

search_array(integersArray, 3)