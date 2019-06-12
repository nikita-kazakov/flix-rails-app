require 'rails_helper'
describe 'Deleting a Movie' do

  it 'destroys the movie and show movie listing without it' do

    movie = Movie.create(movie_attributes)
    visit movie_url(movie)

    #click_link 'Delete Movie'
    #need to add a way to say "OKAY" when it asks "are you sure"
    #expect(page).to_not have_text(movie.title)

  end

end