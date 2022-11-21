Rails.application.routes.draw do
  get 'experiences/new'
  # root to: "pages#home"
  root to: "experiences#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:accept, :decline, :new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
