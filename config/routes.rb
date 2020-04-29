Rails.application.routes.draw do
  resources :events
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  get 'users/:id' => 'users#show', as: 'current_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "events#index"
end
