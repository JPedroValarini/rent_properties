Rails.application.routes.draw do
  resources :properties
  get '/', to: 'properties#home', as: 'home'

  # root "properties#index"
end
