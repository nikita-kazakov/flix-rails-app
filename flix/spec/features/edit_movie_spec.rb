require 'rails_helper'

describe 'Editing a movie' do

  it 'updates the movie and shows the movies updated details' do
    movie = Movie.create(movie_attributes)
    visit movie_url(movie)
    click_link 'Edit Movie'
    expect(current_path).to eq(edit_movie_path(movie))
    expect(find_field('Title').value).to eq(movie.title)
    fill_in 'Title', with: "Ghosters"
    click_button 'Update Movie'
    expect(page).to have_text('Movie Successfully Updated!')
  end

  it 'does not update movie if invalid' do

    movie = Movie.create(movie_attributes)
    visit edit_movie_url(movie)
    fill_in 'Title', with: ""
    click_button 'Update Movie'
    expect(page).to have_text("error")
  end


end