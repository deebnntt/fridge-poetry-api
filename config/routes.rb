Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/signup', to: 'api/v1/users#create'
  post '/login', to: 'sessions#create'
  get '/me', to: 'api/v1/users#me'

  namespace :api do
  namespace :v1 do
    resources :words, only: [:index]
    resources :poems
    resources :magnets, only: [:create]
    resources :tags, only: [:create]
    resources :users, only: [:index, :show, :create]
    resources :likes, only: [:index, :create]
  end
end

end
