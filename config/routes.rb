Rails.application.routes.draw do
  #resources :players
  resources :some_things
  resources :winners
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  resources :typos do
  resources :players
end
  root 'typos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
