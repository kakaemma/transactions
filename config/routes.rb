Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :transactions
  post 'transactions', to: 'transactions#create'
  get 'transactions', to: 'transactions#index'
  get 'transactions/:id', to: 'transactions#show'
  put 'transactions/:id', to: 'transactions#update'
end
