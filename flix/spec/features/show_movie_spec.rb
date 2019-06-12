require 'rails_helper'

describe 'Viewing individual movies' do

  it 'shows movies attributes' do
    movie1 = Movie.create(title: "Iron Man",
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          rating: "PG-13",
                          total_gross: 818412101.00,
                          released_on: "2015-05-02",
                          duration: 150)

    visit movie_url(movie1)
    expect(page).to have_content(movie1.description)
    expect(page).to have_text(movie1.released_on)
    expect(page).to have_text(movie1.rating)
    expect(page).to have_text(movie1.director)
    expect(page).to have_text(movie1.duration)
    expect(page).to have_text(movie1.duration)
    #expect(page).to have_text(movie1.total_gross)
    #add average ratings

  end

end