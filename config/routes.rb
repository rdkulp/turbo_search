Rails.application.routes.draw do
  root "search#index"
  get "/search", to: "search#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
