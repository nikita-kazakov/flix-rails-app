require 'rails_helper'

describe 'viewing list of movies' do

  it 'shows the movies' do
    visit root_url
    expect(page).to have_text("Movie Reviews")
  end

end