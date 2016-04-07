require "sinatra"
# require "sinatra/reloader"

get '/' do
 'Hello, World'
end

get '/real_page' do
'the other page'
end

get '/hi' do
  redirect 'real_page'
end
