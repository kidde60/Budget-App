Rails.application.routes.draw do
  devise_for :users
  
  resources :categories do
    resources :expenses
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "categories#index"
  # root to: 'home#index'

end
