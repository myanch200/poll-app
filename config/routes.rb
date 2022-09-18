Rails.application.routes.draw do
  
  resources :questions do
    resources :choices
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "questions#index"
end
