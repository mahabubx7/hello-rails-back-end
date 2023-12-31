Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "greetings#index"

  resources :greetings, only: [:index], defaults: {format: 'json'} do
    collection do
      get :random_greeting
    end
  end
end
