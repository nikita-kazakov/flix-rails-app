require 'rails_helper'

describe 'When creating Movie' do

  it 'saves the movie and shows its details ' do
    visit new_movie_path
    expect(current_path).to eq(new_movie_path)

    fill_in "Title", with:"New Movie Title"
    fill_in "Description", with: "This superhero saves the world 50 times over and he loves it."
    select "PG-13", from: "Rating"
    #fill_in "Released on", with: "2016-05-03" #not working
    fill_in "Total gross", with: "75000000"
    fill_in "Cast", with: "Cast Member"
    fill_in "Director", with: "Cool Director"
    fill_in "Duration", with: "120"
    fill_in "Image file name", with: "movie.png"

    click_button "Create Movie"

    expect(current_path).to eq(movies_path)
    expect(page).to have_text("New Movie Title")
  end



end