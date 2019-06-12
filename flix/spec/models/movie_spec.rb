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


end