require 'sinatra'
require 'sinatra/reloader'
require_relative 'models/movie'
require 'pry'
require 'imdb'

get '/' do
  erb(:home)
end

get '/list' do

  title = params[:title]

  new_movie = Movie.new
  item = MovieList.new(title)
  new_movie.add_movie(item)


  # erb(:list)
end
