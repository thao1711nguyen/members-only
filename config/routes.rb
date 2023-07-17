Rails.application.routes.draw do
  devise_for :users
  #root to: 'devise/sessions#new'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'posts#index'
  resource :user, only: [:show, :update]
  resolve('User') { [:user] }
  
  resources :posts, only: [:new, :create, :index]
end
