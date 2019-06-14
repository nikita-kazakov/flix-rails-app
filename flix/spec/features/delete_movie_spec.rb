require 'rails_helper'
describe 'Deleting a Movie' do

  it 'destroys the movie and show movie listing without it' do

    movie = Movie.create(movie_attributes(title: "Pains"))
    visit movie_url(movie)

    click_link 'Delete Movie'

    expect(page).to_not have_text(movie.title)
    expect(page).to have_text('Movie Deleted.')

  end

end