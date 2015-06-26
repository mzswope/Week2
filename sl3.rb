require "sinatra"
require "sinatra/reloader"

set :port, 3003
set :bind, '0.0.0.0'

num_one ||= 0
num_two ||= 0

get ('/') do 
  
  erb :sl3form
end

post ('/calulations') do
  num_one = params[:number_one].to_i
  num_two = params[:number_two].to_i
   
   @result = case
   when "Add"
    num_one + num_two
   when "Subtract"
    num_one - num_two
   when "Multiply"
    num_one * num_two
   when "Divide"
    num_one / num_two  
    
    redirect('/answer')
  end
end

get ('/answer') do
  "Your total is #{@result}."   
  redirect('/') 
end

get ('/counting') do #does not display anything
  @numbers = (1..200).each {|i| puts i}
  
  erb :sl3counting
end


