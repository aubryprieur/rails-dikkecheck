Rails.application.routes.draw do
  resources :categories

  resources :belge_categories



  resources :bookings

  resources :belges do
    resources :reviews
  end

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
