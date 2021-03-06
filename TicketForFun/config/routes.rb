Rails.application.routes.draw do
	
  resources :movies
  resources :users
  resources :collaborators
  resources :managers
  resources :salas
  resources :cinemas
  
  get 'user_enter', to: 'user_sessions#new'
  post 'user_enter', to: 'user_sessions#create'
  delete 'user_leave', to: 'user_sessions#destroy'
  
  get 'collab_enter', to: 'collaborator_sessions#new'
  post 'collab_enter', to: 'collaborator_sessions#create'
  delete 'collab_leave', to: 'collaborator_sessions#destroy'

  get 'manager_enter', to: 'manager_sessions#new'
  post 'manager_enter', to: 'manager_sessions#create'
  delete 'manager_leave', to: 'manager_sessions#destroy'
  
  get 'login/index'

  get 'footer/faleconosco', to: 'footer#faleconosco'
  get 'footer/perguntas', to: 'footer#perguntas'
  get 'footer/termos', to: 'footer#termos'

  root 'movies#index'

end
