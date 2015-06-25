# SL2. They call it free will

# OK, so we got ourselves comfortable with Sinatra, and the way he plays the songs we write. That’s nice, our first web applications!
# Remember this moment :)

# Now I want you to think on a small web application with no UX at all and just a bit of interaction with a web client. You can do iterations
# on it so you add one feature at a time.

# Take a moment to read a bit of Sinatra documentation (test yourself!) and play with this tiny web framework. Use several routes, redirects,
# parameters and conditions.

# Go ahead! :D

require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'

list_of_songs||= 0
song||= 0

get '/' do
  songs += 0

  if list_of_songs >= 5
    redirect('/enough')
  end 
  
  "You currently have #{list_of_songs} songs in your playlist."
end

post '/songs/add'
  "Please add a song to your playlist."
  song = gets.chomp
  list_of_songs += 0
  list_of_songs << song
  redirect('/songs/new')
  
post '/songs/new' do
  list_of_songs -= 1 if list_of_songs > 0
  redirect('/')
end

get '/enough' do
  "You have reached the maximum number of songs, #{list_of_songs}, in your account.  For $10/mth you can have an unlimited amount."
end