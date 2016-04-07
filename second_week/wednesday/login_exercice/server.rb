require 'sinatra'
require 'sinatra/reloader'
require 'pry'

enable:sessions

get '/users' do
  erb(:login)
end

get '/logged' do
  user = params[:username]
  pw = params[:password]

  user_list = [
    {:username => "marc", :password => "asdf"},
    {:username => "admin", :password => "admin"}
  ]
  # session[:saved_value] = @user
  # session[:saved_value] = @pw
  if user_list.any? {|single_user| single_user[:username] == user and single_user[:password] == pw}
     redirect to '/success'
   else
     redirect '/users'
   end

   "Params data: " + params.inspect
end

get '/success' do
  erb(:success)
end
