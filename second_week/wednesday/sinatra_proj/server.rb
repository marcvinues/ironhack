require 'sinatra'
require 'sinatra/reloader'
require 'pry'

#initialize sessions always using this parameter
enable:sessions
#example using pry on sinatra
get '/users/:username' do
  @username = params[:username]
  binding.pry
  'hello ' + @username
end
#changin status of our server, we can see at console what is going on
get '/foo' do
  status(418)
  "I'm a tea pot!"
end
#example of sessions, first we want to init at the top of file line 6
get '/session_test/:text' do
  text = params[:text]
  session[:saved_value] = text
end

get '/session_show' do
  "Now in the session: " + session[:saved_value]
end

get '/memory' do
  erb(:memory)
end
