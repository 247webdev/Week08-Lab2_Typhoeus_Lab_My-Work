Rails.application.routes.draw do
  get '/movies/index', to: 'movies#search', as: 'movies'

  root 'movies#index'
end
