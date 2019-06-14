require 'rails_helper'

describe 'viewing list of movies' do

  it 'shows the movies' do

    movie1 = Movie.create(title: "Iron Man",
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          rating: "PG-13",
                          total_gross: 818412101.00,
                          released_on: "2015-05-02",
                          duration: 150)

    movie2 = Movie.create(title: "Superman",
                          rating: "PG",
                          total_gross: 134218018.00,
                          description: "Clark Kent grows up to be the greatest super-hero",
                          released_on: "1978-12-15",
                          duration: 120)

    movie3 = Movie.create(title: "Spider-Man",
                          rating: "PG-13",
                          total_gross: 403706375.00,
                          description: "Peter Parker gets bit by a genetically modified spider",
                          released_on: "2002-05-03",
                          duration: 110)

    visit movies_url
    expect(page).to have_text(movie1.title)
    expect(page).to have_text(movie2.title)
    expect(page).to have_text(movie3.title)
    expect(page).to have_content("Iron Man")
    expect(page).to have_text(movie1.rating)
    #At least the first 10 characters of description
    expect(page).to have_text(movie1.description[0..10])
    expect(page).to have_text(movie1.released_on)

  end


  it 'shows future releases' do
    movie_unreleased = Movie.create(movie_attributes(released_on: 1.month.from_now))
    movie_released = Movie.create(movie_attributes(title:"FASTMOVIE", released_on: 1.month.ago))

    visit future_releases_url
    expect(page).to have_content(movie_unreleased.title)
    expect(page).not_to have_text(movie_released.title)

  end

end