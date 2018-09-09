Rails.application.routes.draw do
  resources :vehicles
  resources :starships
  resources :species
  resources :planets
  resources :films
  resources :people
  root 'pages#home'
end

