# require gems
require 'sqlite3'


# create SQLite3 database
db = SQLite3::Database.new("tourney.db")

# table setup
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS tourney(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    "1" VARCHAR(255),
    "2" VARCHAR(255),
    "3" VARCHAR(255),
    "4" VARCHAR(255),
    "5" VARCHAR(255),
    "6" VARCHAR(255),
    "7" VARCHAR(255),
    "8" VARCHAR(255),
    "9" VARCHAR(255), 
    "10" VARCHAR(255),
    Wins VARCHAR(255),
    Losses VARCHAR(255)
  )
SQL

# create a table (if it's not there already)
db.execute(create_table_cmd)

# # add entrants 
def create_entrant(db, name)
  db.execute("INSERT INTO tourney (name) VALUES (?)", [name])
end

# get id by name
def get_id(db, name)
    cmd = "SELECT id FROM tourney WHERE name = ?"
    rows = db.execute(cmd, [name])
    if rows.length > 0
        id = rows[0]
        return id
    else
        return 0
    end
end

# update database by winner and loser input
def update_win(db, winner, loser)
    winner_id = get_id(db, winner)
    loser_id = get_id(db, loser)

    if winner_id == 0 || loser_id == 0
        puts "One of these names is not found."
    else
        update_win_by_id(db, winner_id, loser_id)
        update_loss_by_id(db, loser_id, winner_id)
        update_wins_and_losses_total(db, winner_id)
        update_wins_and_losses_total(db, loser_id)
    end
end

def update_win_by_id(db, winner_id, loser_id) 
    cmd = <<-SQL
    UPDATE tourney 
    SET #{loser_id} = "Win"
    WHERE id = ?
    SQL
    db.execute(cmd, [winner_id]) 
end

def update_loss_by_id(db, loser_id, winner_id) 
    cmd = <<-SQL
    UPDATE tourney
    SET #{winner_id} = "Loss"
    WHERE id = ?
    SQL
    db.execute(cmd, [loser_id])
end

# update wins total
def update_wins_and_losses_total(db, id)
    cmd = <<-SQL
    SELECT * FROM tourney
    WHERE id = ?
    SQL

    row = db.execute(cmd, [id])

    # track wins and losses total
    wins = 0
    losses = 0

    # iterate over first array item in returned array (row)
    row[0].each do |column|
        if column == "Win" 
            wins += 1
        elsif column == "Loss"
            losses += 1
        end
    end

    cmd2 = <<-SQL
    UPDATE tourney
    SET Wins = ?, Losses = ?
    WHERE id = ?
    SQL

    db.execute(cmd2, [wins, losses, id])
end

def counter(db)
    counter = <<-SQL 
    SELECT COUNT(*) FROM tourney 
    SQL
    tally = db.execute(counter)
    count = tally[0]
end

# check if any null entries are left
def fights_left(db, id)
    cmd = <<-SQL
        SELECT count(*) AS total_nil FROM tourney WHere "#{id}" is NULL;
    SQL

    db.execute(cmd)[0]
end

# p fights_left(db, "1")[0]

# find person with the most Wins
def find_winner(db)
    cmd = <<-SQL
    SELECT "name", MAX("Wins") from tourney
    SQL

    wins = db.execute(cmd)
    return wins[0]
end

# tournament setup - name input
puts "Welcome to Round Robin Tracker App v1.0"
puts 

puts "Please enter your 10 tournament entrants' names."

count_total = counter(db)

count = count_total[0]

while count < 10
    10.times do
        name = gets.chomp
        create_entrant(db, name)
        count += 1
    end
end


continue = "yes"
until continue == "no"

    # tournament maintenance - input wins/losses
    puts "Please input the winner's name"
    winner = gets.chomp
    puts


    puts "Please input the loser's name"
    loser = gets.chomp
    puts


    if (winner != nil && loser != nil)
        # updates database for win/loss
        update_win(db, winner, loser)
    end

    # ask if user wants to enter another fight result
    puts "Is the tournament still in progress?"
    continue = gets.chomp
    puts
end

puts "#{find_winner(db)[0]} is the winner with #{find_winner(db)[1]} wins."
puts

# retrievie data
db.execute("SELECT * FROM tourney") do |row|
    p row
end











