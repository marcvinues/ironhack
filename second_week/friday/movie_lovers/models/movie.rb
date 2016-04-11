require 'pry'
require 'imdb'
class Movie
  def initialize
    @movie = []
  end

  def add_movie(new_title)
    @movie.push(new_title)
  end
end
class MovieList
    attr_reader :title

    def initialize title
  		@title = title
  	end
# binding.pry
end
