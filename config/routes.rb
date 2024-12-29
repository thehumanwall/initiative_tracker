Rails.application.routes.draw do
  # teams routes
  get "/teams", to: "teams#index"
  get "/teams/new", to: "teams#new"
  post "/teams", to: "teams#create"
  get "/teams/:id", to: "teams#show"
  get "/teams/:id/edit", to: "teams#edit"
  patch "/teams/:id", to: "teams#update"
  put "/teams/:id", to: "teams#update"
  delete "/teams/:id", to: "teams#destroy"

  get "initiatives", to: "initiatives#index"
  get "home", to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root to: "home#index"
end
