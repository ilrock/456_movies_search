Rails.application.routes.draw do
  root to: 'movies#index'

  get 'results', to: 'results#index'
  resources :movies, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
