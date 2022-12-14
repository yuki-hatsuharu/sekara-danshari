Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  root to: "items#index"
  resources :users, only: [:show, :update]
  resources :items do

    collection do
      get 'search'
    end
    
  end
end
