Rails.application.routes.draw do
  get 'product_information/new'
  get 'product_information/create'
  resources :item_lists
  get 'pages/new_page', to: 'pages#new_page', as: :new_page
  #resources :posts
  devise_for :users
  resources :friends
  #get 'home/index'
  get 'home/view'
  get 'home/about'
  #root 'home#index'
  root 'friends#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :item_lists do
    post 'save_quantity', on: :collection
  end
  resources :item_lists do
    get 'retrieve_quantities', on: :collection
  end
  post '/save_product_information', to: 'calendar#save_product_information'
  get '/get_existing_products', to: 'calendar#get_existing_products'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/product_information/new', to: 'product_information#new'
  post '/product_information/create', to: 'product_information#create'
  get '/product_information/retrieve_by_date', to: 'product_information#retrieve_by_date'
  get '/product_information/show_by_date', to: 'product_information#show_by_date'
  # Defines the root path route ("/")
  # root "posts#index"
end
