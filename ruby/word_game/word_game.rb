# game Class

# Stores input word as a variable
# Split word on each character into component letters
# Store character breakdown in an array
# Another user must guess the correct letters in word in (length + 5) guesses
# Any repeated letter guesses do not count
    # Store all guesses in another array
    # Check new input against guess array
# Output feedback after each guess showing which letters have been guessed in which spaces

# Class must have variables for
# word - read
# word character array - read
# guess character array - read/write
# store guess count - read/write
# check is the game over - read


class WordguessGame
    attr_accessor 
    attr_reader

    def initialize(word)
        @word = word
        @guess_count = 0
        @is_over = false
        @guess = guess
    end

    def word_characters(word)
        word_char_array = word.split(//)
    end

    def guess_characters(guess)
        guess_char_array.push(guess)
    end

    
