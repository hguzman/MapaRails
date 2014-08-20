Rails.application.routes.draw do
  resources :services
  resources :class_vehicles
  resources :tests
  resources :documents
  resources :people
  resources :list_insurers
  resources :type_insurers
  resources :insurers
  resources :colors
  resources :vehicles
  resources :drivers
  resources :streets
  resources :transits

  scope "(:locale)", locale: /es|en/ do
    root 'welcome#index'
    devise_for :users
    get 'inicio/index'
    resources :accidents
  end  
end
