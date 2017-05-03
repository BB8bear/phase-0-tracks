require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("participants.db")
db.results_as_hash = true 

# table setup
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS participants(
id INTEGER PRIMARY KEY, 
name VARCHAR(255)
)
SQL

# create a table (if it's not there already)
db.execute(create_table_cmd)

# show tournament participants on the home page
get '/' do
    "Hello world"
    @participants = db.execute("SELECT * FROM participants")
    erb :home
end

get '/participants/new' do
    erb :new_participant
end

get '/participants/match' do
    erb :new_score
end

# create a new participant via form
post '/participants' do 
    db.execute("INSERT INTO participants (name) VALUES (?)", [params['name']])
    redirect '/'
end

# create a new tournament pair score entry
post '/participants' do 
    db.execute("INSERT INTO participants (, ) VALUES (?, ?)", [params['winner'], params['loser']])
    redirect '/'
end
