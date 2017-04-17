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
    attr_accessor :word_output
    attr_reader :guess_count

    def initialize(word)
        @word = word
        @guess_count = 0
        @is_over = false
        @guess_char_array = []
        @word_output = ''
    end

    def guess_characters(guess)
        @guess_char_array.push(guess)
    end

    def create_output
        @word.each do 
            @word_output.concat('_')
        end
    end

    def check_guess(guess) # check word_char_array for guess
        if !@guess_char_array.include? guess
            guess_characters(guess)
            @guess_count += 1

            if @word.include? guess
                #check index of guess letter in word character array
                #Output goes here
            else 
                p "Guess again!"
            end
        end
   
    end
end

# user interface

puts "Welcome to the Word Guess Game!"
game = WordguessGame.new("unicorn")

puts "Organizing word board..."
game.create_output

puts "You have #{} guesses left."
p game.word_output

while !game.is_over
    puts "Guess a letter!"
    guess = gets.chomp

    game.check_guess(guess)


end