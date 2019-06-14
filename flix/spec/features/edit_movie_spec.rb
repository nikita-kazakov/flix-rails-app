require 'rails_helper'

describe 'Editing a movie' do

  it 'updates the movie and shows the movies updated details' do
    movie = Movie.create(movie_attributes)
    visit movie_url(movie)
    click_link 'Edit Movie'
    expect(current_path).to eq(edit_movie_path(movie))

    expect(find_field('Title').value).to eq(movie.title)
  end

  it 'updates the movie and shows the movies updated details' do
    movie = Movie.create(movie_attributes)
    visit movie_url(movie)
    click_link 'Edit Movie'
    expect(current_path).to eq(edit_movie_path(movie))

    expect(find_field('Title').value).to eq(movie.title)
  end

end