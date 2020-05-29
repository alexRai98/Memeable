Rails.application.routes.draw do
  root to:'home#index'
  devise_for :users
  resources :memes, only:[:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
