Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  namespace :v1 do
    resources :words, only: [:index]
    resources :poems, only: [:index, :create, :show, :update]
    resources :magnets, only: [:create]
    resources :tags, only: [:create]
  end
end

end
