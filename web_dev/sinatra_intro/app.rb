require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

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
  student.to_s
end


#Write a GET route that returns an address

get '/contact' do
  "152 Elmhurst Drive<br> Fort Lee, NJ 07984"
end 

#Write a GET route that takes a name as a query parameter and says good job to them
#Make a conditional so it only prints good job! if no name is given 

get '/great_job' do
  name = params[:name]
  if name 
    "Great job, #{name}!"
  else 
    "Great job!"
  end 
end 

#Write a GET route that takes two route parameter inputs and adds them together
#and returns the output

get '/add/:num1/:num2' do
  answer = params[:num1].to_i + params[:num2].to_i
  "The answer is #{answer}!"
end 

#Write a GET route that takes a query parameter and filters them based on what
#city they are from 

get '/search' do
  city = params[:city]
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:city]])
  text = ""
  students.each do |student|
    p student
    text << "#{student["name"]}<br>"
    text << "#{student["campus"]}<br><br>"
  end 
  text
end 


=begin 
Answer to research questions
1. Other ruby web app frameworks include Ruby on Rails, Volt, Scorched, Hanami, Hobbit
and many others. 
2. Some other options for using databases with sinatra include Mongo, datamapper, 
Postgre Sequel, ActiveRecord. 
3. A web stack is all of the software that is needed for web development. This would 
include an operating system, a programming language, database and web server. 
=end 