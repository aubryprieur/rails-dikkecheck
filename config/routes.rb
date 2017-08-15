Rails.application.routes.draw do
  resources :categories

  resources :belge_categories

  resources :reviews

  resources :bookings

  resources :belges

  devise_for :users

  root to: 'pages#home'

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
