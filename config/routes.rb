Rails.application.routes.draw do
  resources :client_reviews
  resources :app_booking_channels
  resources :appointment_statuses
  resources :appointments
  devise_for :users, path: 'api/auth', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
