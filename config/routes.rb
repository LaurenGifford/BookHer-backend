Rails.application.routes.draw do

  get '/models', to:'models#index', as: 'models'
  
  get '/casting_directors/:id', to: 'casting_directors#show'

  get '/questions', to:'questions#index'

  get '/projects/:id', to: 'projects#show', as: 'project'
  delete '/projects/:id', to: 'projects#destroy'
  get '/projects', to: 'projects#index', as: 'projects'
  post '/projects', to: 'projects#create'

  get '/jobs/new', to: 'jobs#new'
  post '/jobs', to: 'jobs#create'
  get '/jobs', to:'jobs#index'

  post '/questionnaires', to: 'questionnaires#create'
  


  # resources :questions
  # resources :questionnaires
  # resources :jobs
  # resources :models
  # resources :projects
  # resources :casting_directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
