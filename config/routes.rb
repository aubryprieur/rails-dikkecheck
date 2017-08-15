Rails.application.routes.draw do
  get 'bookings/index'

  get 'bookings/show'

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/edit'

  get 'bookings/update'

  get 'bookings/destroy'

  get 'belges/index'

  get 'belges/show'

  get 'belges/new'

  get 'belges/create'

  get 'belges/edit'

  get 'belges/update'

  get 'belges/destroy'

  resources :users

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
