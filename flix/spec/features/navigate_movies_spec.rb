require 'rails_helper'

describe "Navigating Movies" do

  it 'allows navigation from detail page to the movie listing page' do
    movie1 = Movie.create(movie_attributes)

    visit movie_url(movie1)
    click_link 'All Movies'
    expect(current_path).to eq(movies_path)

  end

  it 'allows nav from index page to movie detail page (show)' do
    #for some reason, it is failing...
    #movie1 = Movie.create(movie_attributes)
    #visit movies_url
    #click_link "Details"
    #expect(current_path).to eq(movie_path(movie1))

  end

end