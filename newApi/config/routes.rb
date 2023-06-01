Rails.application.routes.draw do
  get 'controller_name/action1'
  post 'controller_name/action2'
  resources :drafts
  get 'users/index'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :cars
  resources :trails
  resources :forests, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get '/forests/show_one/:id', to: 'forests#show_one'
end
