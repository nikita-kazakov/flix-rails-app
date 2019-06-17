require 'rails_helper'

describe "Viewing a list of reviews" do

  it "shows the reviews for a specific movie" do
    movie1 = Movie.create(movie_attributes(title: "Iron Man"))
    review1 = movie1.reviews.create(review_attributes(name: "Roger Ebert"))

    movie2 = Movie.create(movie_attributes(title: "Superman"))
    review2 = movie2.reviews.create(review_attributes(name: "Gene Siskel"))

    visit movie_reviews_url(movie1)

    expect(page).to have_text(review1.name)
    expect(page).not_to have_text(review2.name)
  end

  it "shows updated time" do
    movie1 = Movie.create(movie_attributes)
    review1 = movie1.reviews.create(review_attributes)

    visit movie_reviews_url(movie1)
    expect(page).to have_text("less than a minute ago.")

  end

end
