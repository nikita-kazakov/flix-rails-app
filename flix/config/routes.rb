Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "movies#index"
  get 'movies' => 'movies#index'
  get 'movies/:id' =>'movies#show', as:'movie'
  get 'movies/:id/edit' => 'movies#edit', as: "edit_movie"
  patch 'movies/:id' => 'movies#update'

  #Below are rails routes I do for practice
  get 'flashdrives' => 'flashdrives#index'
  get 'flashdrives/:id' => 'flashdrives#show'

end
