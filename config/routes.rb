Rails.application.routes.draw do
  resources :categories

  resources :belge_categories


  post 'accept_booking', to: "bookings#accept"
  post 'refus_booking', to: "bookings#refus"

  resources :belges do
    resources :reviews
    resources :bookings
  end

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  get 'dashboard', to: 'profils#dashboard'
  mount Attachinary::Engine => "/attachinary"

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
