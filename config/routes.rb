Rails.application.routes.draw do
  get 'search', to: 'search#index'
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'

#connects the comments to the posts
  resources :posts do
    resources :comments
  end

  get 'home', to: 'pages#home'
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
 get 'posts', to: "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"



  # Defines the root path route ("/")
  # root "articles#index"
end
