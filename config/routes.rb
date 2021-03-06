Rails.application.routes.draw do
 
  get '/account_details', to: 'account_details#index'
  resources :votes, only: [:create ,:destroy]
  get '/categories' ,to: 'memes_by_category#index' 
  root to:'home#index'
  devise_for :users
  resources :memes, only:[:show, :new, :create, :update] do
    resources :comments, only: :create
  end
  get '/popular',to: 'memes#popularity'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
