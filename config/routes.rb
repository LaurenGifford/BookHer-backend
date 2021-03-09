Rails.application.routes.draw do

  delete '/models/:id', to: 'models#destroy'
  get '/models/:id', to:'models#show'
  get '/models', to:'models#index', as: 'models'
  
  get '/me', to: 'casting_directors#show'
  get '/casting_directors', to:'casting_directors#index'
  post "/signup", to: "casting_directors#signup"
  post "/login", to: "casting_directors#login"

  get '/questions', to:'questions#index'

  get '/projects/:id', to: 'projects#show', as: 'project'
  delete '/projects/:id', to: 'projects#destroy'
  patch '/projects/:id', to: 'projects#update'
  get '/projects', to: 'projects#index', as: 'projects'
  post '/projects', to: 'projects#create'

  delete '/jobs/:id', to: 'jobs#destroy'
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
