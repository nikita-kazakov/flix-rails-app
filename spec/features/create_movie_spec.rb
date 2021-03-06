require 'rails_helper'

describe 'When creating Movie' do

  it 'saves the movie and shows its details ' do
    visit movies_url
    click_link 'Add New Movie'
    expect(current_path).to eq(new_movie_path)

      fill_in "Title", with:"Go superhero"
      fill_in "Description", with: "This superhero saves the world 50 times over and he loves it.  This is a test description."
      select "PG-13", from: "Rating"
      select (Time.now.year - 1).to_s, from: "movie_released_on_1i"
      fill_in "Total gross", with: "75000000"
      fill_in "Cast", with: "Cast Member"
      fill_in "Director", with: "Cool Director"
      fill_in "Duration", with: "120"
      fill_in "Image file name", with: "movie.png"


    click_button "Create Movie"
    expect(current_path).to eq(movie_path(Movie.last))
    expect(page).to have_text("Go superhero")
    expect(page).to have_text("Movie Created!")
  end

  it 'does not save movie if invalid' do
    visit new_movie_url
    click_button "Create Movie"
    expect{click_button 'Create Movie'}.not_to change(Movie, :count)

    expect(current_path).to eq(movies_path)
    expect(page).to have_text('error')

  end



end