require "sinatra"
require "sinatra/reloader"

get "/" do
  "My first Sinatra app."
end

get "/hi" do
  @greeting = "hello World"
  erb(:hipage)
end

get "/author" do
  erb(:author)
end

get "/john" do
  @hijohn = "Hi john!!"
  erb(:test)
end

get "/time" do
    t = Time.now()
    @my_time = t.strftime("%H:%M:%S")

  erb(:time)
end

get "/pizza" do
  @ingredients = [
    "tomato",
    "Mozzarella",
    "peperoni"
  ]
  erb(:pizza)
end

get "/users/:username" do
  @username = params[:username]
  erb(:user_profile)
end

get "/hours/ago/:hour" do
  @hour = params[:hour]
  @t = Time.now()
  # @time = Time.at(t.to_i.abs).strftime "%H:%M:%S"
  @hour_now = @t.hour
  @total = @hour_now - @hour.to_i


  erb(:hour_page)
end
