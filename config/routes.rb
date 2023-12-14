Rails.application.routes.draw do
  get 'dashboard/index'
  resources :sales
  resources :suppliers
  resources :ratings
  resources :toy_types
  resources :inventories
  resources :toys

  get 'search', :to => "search#index"

  root 'dashboard#index'
end
