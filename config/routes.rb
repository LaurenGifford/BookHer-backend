Rails.application.routes.draw do

  get '/models', to:'models#index', as: 'models'


  get '/projects/:id', to: 'projects#show', as: 'project'
  get '/projects', to: 'projects#index', as: 'projects'
  post '/projects', to: 'projects#create'


  get '/casting_directors/:id', to: 'casting_directors#show'

  get '/questions', to: 'questions#index'
  # resources :questions
  # resources :questionnaires
  # resources :jobs
  # resources :models
  # resources :projects
  # resources :casting_directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
