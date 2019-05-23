class MoviesController < ApplicationController

  def index
    #@movies = ["Iron Man", "Superman", "Spider-Man", "Die Hard"] Hardcoded...
    #@movies = Movie.all
    @movies = Movie.released #<==This is defined in the Movie Model
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end



  def new
    @movie = Movie.new
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      #flash[:notice] = "Movie Successfully Updated!" <short cut with notify below.
      redirect_to @movie, notice: "Movie Successfully Updated!"
    else
      render :edit
    end

  end

  def create
    #movie_params = params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  #Let's make the movie_params a private method to DRY code.
private
  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross, :director, :cast, :duration, :image_file_name)
  end

end
