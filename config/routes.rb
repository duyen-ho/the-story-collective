Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  get    '/signup',  to: 'users#new'

  # Sessions
  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'

end
