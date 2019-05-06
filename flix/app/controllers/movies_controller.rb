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

  def update
    @movie = Movie.find(params[:id])
    movie_params = params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    @movie.update(movie_params)
    redirect_to @movie
  end

end
