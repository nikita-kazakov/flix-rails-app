Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'movies' => 'movies#index'
  get 'movies/:id' =>'movies#show'

  #Below are rails routes I do for practice
  get 'flashdrives' => 'flashdrives#index'
  get 'flashdrives/:id' => 'flashdrives#show'

end
