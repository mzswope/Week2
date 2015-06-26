require "sinatra"
require "sinatra/reloader"
require "pry"

set :port, 3003
set :bind, '0.0.0.0'

num_one ||= 0
num_two ||= 0
result ||= 0

get ('/') do 
  
  erb :sl3form
end

post ('/calculations') do
  num_one = params[:number_one].to_i
  num_two = params[:number_two].to_i
  operation = params[:operation]

   result = case operation
   when "add"
    num_one + num_two
   when "subtract"
    num_one - num_two
   when "multiply"
    num_one * num_two
   when "divide"
    num_one / num_two  
   end
    
    
    redirect('/answer')
end

get ('/answer') do
  @result = result
  "Your total is #{@result}."   
end

get ('/counting') do 
  @numbers = (1..200)
  
  erb :sl3counting
end


