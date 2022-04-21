Rails.application.routes.draw do
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  resources :themes
  resources :images
  resources :values
  resources :users
  # root 'main#index'
  root 'work#index'
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  # Work
  match 'work',             to: 'work#index',             via: 'get'
  match 'choose_image',     to: 'work#choose_image',      via: :get
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  # match 'display_theme',    to: 'work#display_theme',     via: :post


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
