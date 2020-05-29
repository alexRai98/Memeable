Rails.application.routes.draw do
 
 # resources :users,only: [:new,:create]
  get '/categories' ,to: 'memes_by_category#index' 
  root to:'home#index'
  devise_for :users
  resources :memes, only:[:show, :new, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
