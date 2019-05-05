class MoviesController < ApplicationController

  def index
    #@movies = ["Iron Man", "Superman", "Spider-Man", "Die Hard"] Hardcoded...
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

end
