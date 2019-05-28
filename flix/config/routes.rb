Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "movies#index"
  #get 'movies' => 'movies#index'
  #get 'movies/:id' =>'movies#show', as:'movie'
  #get 'movies/:id/edit' => 'movies#edit', as: "edit_movie"
  #patch 'movies/:id' => 'movies#update'

  #Below are rails routes I do for practice
  #get 'flashdrives' => 'flashdrives#index'
  #get 'flashdrives/:id' => 'flashdrives#show'

  #This is the fast way of having rails DEFINE ALL THE ROUTES for you.

  #Nesting reviews WITHIN movies
  resources :movies do
    resources :reviews
  end

end
