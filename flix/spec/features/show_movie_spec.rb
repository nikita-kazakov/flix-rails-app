require 'rails_helper'

describe 'View individual movie' do
  it 'shows attributes' do

    movie1 = Movie.create(movie_attributes)

    visit movie_url(movie1)

    expect(page).to have_content(movie1.description)
    expect(page).to have_text(movie1.released_on)
    expect(page).to have_text(movie1.rating)
    expect(page).to have_text(movie1.director)
    expect(page).to have_text(movie1.duration)
    #expect(page).to have_text(movie1.total_gross)
    #add average ratings
  end

  it 'shows FLOP under total gross if movie has total gross under 50MM' do
    movie = Movie.create(movie_attributes(total_gross: 49000000))
    visit movie_url(movie)
    expect(page).to have_text('FLOP')
  end

  it 'shows Gross # under total gross if movie has total gross over 50MM' do
    movie = Movie.create(movie_attributes(total_gross: 51000000))
    visit movie_url(movie)
    expect(page).to have_text('$51,000,000')
  end
end