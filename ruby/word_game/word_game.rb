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
    attr_reader :is_over

    def initialize(word)
        @word = word
        @guess_count = 0
        @is_over = false
        @guess_char_array = []
        @word_output = ''
        @total_allowed_guesses = @word.length + 5
    end

    def guess_characters(guess)
        @guess_char_array.push(guess)
    end

    def valid_guess(guess)
        index_tracker = 0

        until index_tracker == nil
            index_tracker = @word.index(guess, index_tracker)
            if index_tracker != nil
                @word_output[index_tracker] = guess
                index_tracker += 1
            end
        end
    end

    def print_the_word
        @word_output.each_char do |character|
            print character + " "
        end
        puts
    end

    def check_for_end
        if @word == @word_output
            p "You win!"
            @is_over = true

        elsif @guess_count >= @total_allowed_guesses
            p "You suck!"
            @is_over = true
        end
    end

    def check_guess(guess) # check word_char_array for guess
        if !@guess_char_array.include? guess
            guess_characters(guess)
            @guess_count += 1

            if @word.include? guess
                valid_guess(guess)
                print_the_word
            else 
                p "Guess again!"
            end
            check_for_end
        end
    end

    def create_output
        @word.each_char do 
            @word_output.concat("_")
        end
    end

    def guesses_left
        return @total_allowed_guesses - @guess_count
    end
end

# user interface

puts "Welcome to the Word Guess Game!"
game = WordguessGame.new("unicorn")

puts "Organizing word board..."
game.create_output

while !game.is_over
    puts "You have #{game.guesses_left} guesses left."
    puts
    puts "Guess a letter!"
    guess = gets.chomp

    game.check_guess(guess)
end