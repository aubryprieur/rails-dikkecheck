Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/create'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  get 'belge_categories/index'

  get 'belge_categories/show'

  get 'belge_categories/new'

  get 'belge_categories/create'

  get 'belge_categories/edit'

  get 'belge_categories/update'

  get 'belge_categories/destroy'

  get 'reviews/index'

  get 'reviews/show'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destroy'

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
