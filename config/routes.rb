Rails.application.routes.draw do
  resources :questionnaires
  resources :jobs
  resources :models
  resources :projects
  resources :casting_directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
