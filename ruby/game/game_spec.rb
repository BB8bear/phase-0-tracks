require_relative 'game'

describe WordguessGame do 
    let(:game) {WordguessGame.new("unicorn")}
    
    it "stores the input word" do
        expect(game.word).to eq "unicorn"
    end

    it "initializes word output display" do
        game.create_output
        expect(game.word_output).to eq "_______"
    end

    it "checks for game end" do
        game.word_output = "unicorn"
        expect(game.check_for_end).to be_truthy
    end

    it "checks guess against word for each instance of guess in word" do
        expect(game.valid_guess("u")).to be_truthy
    end 

    it "adds guess to guessed character array" do
        expect(game.guess_characters("b")).to eq "b"
    end
end
    