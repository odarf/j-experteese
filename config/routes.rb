Rails.application.routes.draw do
  root 'main#index'
  # root 'work#index'

  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'

  resources :themes
  resources :images
  resources :values
  resources :users
  resources :sessions

  # Main
  match 'index',    to: 'main#index',           via: 'get'
  match 'about',    to: 'main#about',           via: 'get'
  match 'help',     to: 'main#help',            via: 'get'
  match 'contacts', to: 'main#contacts',        via: 'get'
  # Work
  match 'work',     to: 'work#index',           via: 'get'
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  match 'display_theme',    to: 'work#display_theme',     via: :post
  match 'results_list',     to: 'work#results_list',      via: :get
  # match 'choose_image',     to: 'work#choose_image',      via: :get
  # Users
  match 'signup', to: 'users#new', via: 'get'
  # Sessions
  match 'signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'delete'

end
