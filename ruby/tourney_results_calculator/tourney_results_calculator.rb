# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("tourney.db")
db.results_as_hash = true

# learn about fancy string delimiters
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
    Losses VARCHAR(255),
    Place VARCHAR(255)
  )
SQL

# create a table (if it's not there already)
db.execute(create_table_cmd)

# add a test entrant
# db.execute("INSERT INTO tourney (name) VALUES ('Bob')")

# add test case entrants 
# def create_entrant(db, name)
#   db.execute("INSERT INTO tourney (name) VALUES (?)", [name])
# end

# 10.times do
#   create_entrant(db, Faker::Name.name)
# end

# retrievie data
tourney = db.execute("SELECT * FROM tourney")

tourney.each do |entrant|
 puts "#{entrant[1]} is in the tourney."
end

