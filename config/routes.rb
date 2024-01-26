Rails.application.routes.draw do
  resources :tasks
  
  # For PWA
  get "/sw.js", to: "pwa#service_worker", as: "service_worker"
  get "/manifest.json", to: "pwa#manifest", as: "pwa_manifest"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "tasks#index"
end
