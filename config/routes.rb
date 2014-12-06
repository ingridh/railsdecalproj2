Rails.application.routes.draw do
  # get 'comments/index'

  # get 'comments/show'

  # get 'comments/update'

  # get 'comments/edit'

  # get 'comments/create'

  # get 'events/index'

  # get 'events/show'

  # get 'events/update'

  # get 'events/edit'

  # get 'events/create'
  patch '/events', to:'events#delete', as:'delete_event'
  patch '/event/:id', to:'comments#delete', as:'delete_comment'
  post '/event/:id', to:'comments#create', as:'create_comment'
  get '/event/:id', to:'events#new_com', as:'new_com'

  resources :events
  resources :comments
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
