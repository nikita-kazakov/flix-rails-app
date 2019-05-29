class ReviewsController < ApplicationController

  def index

    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews

  end

  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new

  end

  def create

    @movie = Movie.find(params[:movie_id])
    #@review = @movie.reviews.new(params[:review])  FORBIDDEN ATTRIBUTES ERROR
    @review = @movie.reviews.new(params.require(:review).permit(:name, :stars, :comment))

    if @review.save
      redirect_to movie_reviews_path(@movie), notice: "Thanks for your review"
    else
      render :new
    end
  end


end
