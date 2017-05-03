# require gems
require 'sinatra'
require 'sinatra/reloader'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do 
    name = params[:name]
    if name
        "Hello, #{name}!"
        "#{params[:name]} is #{params[:age]} years old."
    else
        "Hello, you!"
    end
end

# write a GET route with
# route parameters
get '/about:person' do
    person = params[:person]
    "#{person} is a programmer."
end

get '/:person_1/loves/:person_2' do
    "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route with 
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

# write a GET route that retreives
# a particular student
get '/students/:id' do 
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
    student.to_s
end

