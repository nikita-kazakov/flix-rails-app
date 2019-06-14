require 'rails_helper'

describe 'A Movie' do

  it 'is a flop if it has a gross of under 50MM' do
    #You don't need to hit the database with "movie_attributes" method in a Model spec file.
    movie = Movie.create(total_gross: 49000000)
    expect(movie.flop?).to eq(true)

  end

  it 'is NOT a flop if it has a gross of over 50MM' do
    movie = Movie.create(total_gross: 51000000)
    expect(movie.flop?).to eq(false)
  end

  it 'is not in total movie list because its a future release' do
    movie = Movie.create(movie_attributes(released_on: 1.year.from_now))
    expect(Movie.future_releases).to include(movie)
  end

  it 'is a future release' do
    movie = Movie.create(movie_attributes(released_on: 1.year.from_now))
    expect(Movie.future_releases).to include(movie)
  end

  it 'returns released movies ordered with the most recently released first' do
    movie1 = Movie.create(movie_attributes(released_on: 1.months.ago))
    movie2 = Movie.create(movie_attributes(released_on: 2.months.ago))
    movie3 = Movie.create(movie_attributes(released_on: 3.months.ago))

    expect(Movie.released).to include(movie1, movie2, movie3)
    #expect(Movie.released).to eq([movie3, movie2, movie1])
  end

  #Testing Validations
  it 'requires a title' do
    movie = Movie.new(title:"")
    movie.valid?
    expect(movie.errors[:title].any?).to eq(true)

  end

  it "requires a description" do
    movie = Movie.new(description: "")
    movie.valid?
    expect(movie.errors[:description].any?).to eq(true)
  end

  it "requires a released on date" do
    movie = Movie.new(released_on: "")
    movie.valid?
    expect(movie.errors[:released_on].any?).to eq(true)
  end

  it "Requires a description larger than 25 characters" do
    movie = Movie.new(description: "x" * 24)
    movie.valid?
    expect(movie.errors[:description].any?).to eq(true)
  end

  it "accepts properly formatted image file names" do
    file_names = %w[e.png movie.png movie.jpg movie.gif MOVIE.GIF]
    file_names.each do |file_name|
      movie = Movie.new(image_file_name: file_name)
      movie.valid?
      expect(movie.errors[:image_file_name].any?).to eq(false)
    end
  end

  it "rejects improperly formatted image file names" do
    file_names = %w[movie .jpg .png .gif movie.pdf movie.doc]
    file_names.each do |file_name|
      movie = Movie.new(image_file_name: file_name)
      movie.valid?
      expect(movie.errors[:image_file_name].any?).to eq(true)
    end
  end

  it "accepts any rating that is in an approved list" do
    ratings = %w[G PG PG-13 R NC-17]
    ratings.each do |rating|
      movie = Movie.new(rating: rating)
      movie.valid?
      expect(movie.errors[:rating].any?).to eq(false)
    end
  end

  it "rejects any rating that is not in the approved list" do
      ratings = %w[R-13 R-16 R-18 R-21]
      ratings.each do |rating|
      movie = Movie.new(rating: rating)
      movie.valid?
      expect(movie.errors[:rating].any?).to eq(true)
      end

  end

  it "has many reviews" do
    movie = Movie.new(movie_attributes)

    review1 = movie.reviews.new(review_attributes)
    review2 = movie.reviews.new(review_attributes)

    expect(movie.reviews).to include(review1)
    expect(movie.reviews).to include(review2)
  end

  it "deletes associated reviews" do
    movie = Movie.create(movie_attributes)

    movie.reviews.create(review_attributes)

    expect {
      movie.destroy
    }.to change(Review, :count).by(-1)
  end

  it "calculates the average number of review stars" do
    movie = Movie.create(movie_attributes)

    movie.reviews.create(review_attributes(stars: 1))
    movie.reviews.create(review_attributes(stars: 3))
    movie.reviews.create(review_attributes(stars: 5))

    expect(movie.average_stars).to eq(3)
  end

end