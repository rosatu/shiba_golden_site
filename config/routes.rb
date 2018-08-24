Rails.application.routes.draw do
  resources :languages
  resources :writers
  resources :stories

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  delete '/stories/:id', to: 'stories#destroy', as: 'delete_story'

  get'/stories/:id/development', to: "stories#development", as: 'development'
  post'/stories/:id/development', to: "stories#savedevelopment", as: 'savedevelopment'

  get'/stories/:id/twist', to: "stories#twist", as: 'twist'
  post'/stories/:id/twist', to: "stories#savetwist", as: 'savetwist'

  get'/stories/:id/conclusion', to: "stories#conclusion", as: 'conclusion'
  post'/stories/:id/conclusion', to: "stories#saveconclusion", as: 'saveconclusion'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
