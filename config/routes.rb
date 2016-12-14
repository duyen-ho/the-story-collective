Rails.application.routes.draw do

  resources :users

  get '/signup', to: 'users#new'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  get 'stories', to: 'stories#index'
  get 'stories/new', to: 'parts#new'
  post 'stories', to: 'parts#create'
  get 'stories/:id', to: 'stories#show'
  get 'stories/:id/edit', to: 'parts#edit'
  patch 'stories/:id', to: 'parts#update'


end
