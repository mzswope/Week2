require 'sinatra'
require 'sinatra/reloader'

enable :sessions

set :port, 3003
set :bind, '0.0.0.0'


users ||={}
user_id ||= 0

get '/' do
  @users = users
  @id = session[:id]
  erb :form
end

post '/signup' do
   user = params[:name]
   users[user_id] = user
   session[:id] = user_id
   user_id = user_id + 1   #user_id +=1
   redirect('/')
end


get '/cats' do
  erb :catForm
end
