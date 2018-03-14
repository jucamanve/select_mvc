Rails.application.routes.draw do
  resources :profiles
  resources :skills do
    resources :requirements
  end
  root to: 'profiles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
