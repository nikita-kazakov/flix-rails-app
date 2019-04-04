class MoviesController < ApplicationController

  def index
    #@movies = ["Iron Man", "Superman", "Spider-Man", "Die Hard"] Hardcoded...
    @movies = Movie.all
  end

end
