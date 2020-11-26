Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :movies, only: [:index, :show, :create]
      resources :ratings, only: [:index, :show, :create, :update]
    
    end
  end

end
