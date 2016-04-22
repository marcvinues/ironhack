class MovieContController < ApplicationController
  def index
    @my_movies = Movie.order(created_at: :desc).limit(20)
  end

  def create

    if  Movie.find_by(title: params[:title])
      @my_movies = Movie.find_by(title: params[:title])
      redirect_to "/movie/#{@my_movies.title}"

    # else Movie.find_by(title: params[:title]) == false
  else
       @i = Imdb::Search.new(params[:title])
       @p = @i.movies.title[0]
      redirect_to "/movie/p"
    # else
    #   render "no_movies_found"
    end

  end

  def new

  end

  def show
    @my_movies = Movie.find_by(title: params[:title])
  end

end
