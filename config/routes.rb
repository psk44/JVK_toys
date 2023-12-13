Rails.application.routes.draw do
  resources :sales
  resources :suppliers
  resources :ratings
  resources :toy_types
  resources :inventories
  resources :toys
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
