class ReviewsController < ApplicationController

  def index

    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews

  end


end
