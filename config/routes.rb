Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  post '/current_user', to: 'users#current_user'
  resources :appointments
  resources :qualifications
  resources :office_doctor_availabilities
  resources :in_network_insurances
  resources :doctor_specializations
  resources :offices
  resources :client_reviews
  resources :hospital_affiliations
  resources :specializations
  resources :doctors
  resources :app_booking_channels
  resources :appointment_statuses
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
