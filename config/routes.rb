Rails.application.routes.draw do
  get 'experiences/new', to: "experiences#new"
  get '/dashboard', to: "pages#dashboard"
  # get '/dashboard', to: "pages#"

  # root to: "pages#home"
  root to: "experiences#index"
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:accept, :decline, :new, :create]
  end

  resources :magician do
    resources :experience do
      resources :bookings, only: %i[index]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"

  # resources :bookings, only: [:index]

  # patch "bookings/:id/accept", to: "bookings#accept", as: :accept_booking

  # resources :bookings, only: :destroy

  resources :bookings do
    member do
      patch :accept
      patch :decline
    end
  end
end
