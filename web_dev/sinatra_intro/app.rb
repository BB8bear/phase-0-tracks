# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  "Hello world"
  student.to_s
end

# 1. write a GET route that displays
# an address

get '/contact' do
  "Chicago's Dev Bootcamp campus is located at 1033 W Van Buren St, Chicago, IL 60607."
end

# 2. write a GET route that takes
# a person's name as a query parameter
# and say "Good job, [name]!" 
# If the query parameter is not present, just say 
# "Good job!"

get '/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# 3. a route that uses route parameters to add two numbers
# and respond with the result

get '/:number_1/add/:number_2' do
  "Hello world"
  result = params[:number_1].to_i + params[:number_2].to_i
  result
  "#{params[:number_1]} plus #{params[:number_2]} equals #{result}."
end

# 4. write a route that allows the user to search the Database
# find student by name

get '/students/' do 
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])[0]
  response = ""
  response << "ID: #{student['id']}<br>"
  response << "Name: #{student['name']}<br>"
  response << "Age: #{student['age']}<br>"
  response << "Campus: #{student['campus']}<br><br>"
  response
end

