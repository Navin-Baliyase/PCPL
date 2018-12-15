Rails.application.routes.draw do
  resources :albums
  get 'photos', to: 'albums#user_albums'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'albums#index'
end
