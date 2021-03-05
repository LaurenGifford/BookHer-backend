Rails.application.routes.draw do

  get '/models', to:'models#index', as: 'models'


  get '/projects/:id', to: 'projects#show', as: 'project'
  get '/projects', to: 'projects#index', as: 'projects'

  get '/casting_directors/:id', to: 'casting_directors#show'
  # resources :questions
  # resources :questionnaires
  # resources :jobs
  # resources :models
  # resources :projects
  # resources :casting_directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
