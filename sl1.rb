require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'

list_of_songs||= 0

get '/' do
  list_of_songs += 1

  if list_of_songs >= 10
    redirect('/enough')
  end 
  
  "You currently have #{list_of_songs} songs in your playlist."
end

get '/enough' do
  "IS WORTH F***ING NOTHING #{list_of_songs} times."
end

post '/songs/new' do
  list_of_songs -= 1 if list_of_songs > 0
  redirect('/')
end


