Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/show'

  get 'comments/update'

  get 'comments/edit'

  get 'comments/create'

  get 'events/index'

  get 'events/show'

  get 'events/update'

  get 'events/edit'

  get 'events/create'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
