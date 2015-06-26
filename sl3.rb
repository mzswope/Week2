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
   binding.pry
   case operation
   when "add"
    result = num_one + num_two
   when "subtract"
    result = num_one - num_two
   when "multiply"
    result = num_one * num_two
   when "divide"
    result = num_one / num_two  
   end
    
    
    redirect('/answer')
end

get ('/answer') do
  @result = result
  "Your total is #{@result}."   
end

get ('/counting') do #does not display anything
  @numbers = (1..200)
  
  erb :sl3counting
end


