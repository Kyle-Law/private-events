Rails.application.routes.draw do
  resources :users
  root 'events#index'

  get 'signup' => 'users#new'

  resources :events do
    resources :registrations, only: %i[new create destroy]
  end

  get 'events/filter/:filter' => 'events#index', as: :filtered_events

  resource :session, only: %i[create destroy]
  get 'signin' => 'sessions#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
