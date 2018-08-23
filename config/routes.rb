Rails.application.routes.draw do
  resources :minumen
  resources :stores
  get 'home/hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
