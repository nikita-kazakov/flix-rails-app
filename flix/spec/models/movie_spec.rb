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


end