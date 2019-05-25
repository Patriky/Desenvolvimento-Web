Rails.application.routes.draw do
	
  resources :salas
  resources :cinemas
  get 'login/index'

  get 'entrar', to: 'user_sessions#new'
  post 'entrar', to: 'user_sessions#create'
  delete 'sair', to: 'user_sessions#destroy'

  get 'collab_enter', to: 'collaborator_sessions#new'
  post 'collab_enter', to: 'collaborator_sessions#create'
  delete 'collab_leave', to: 'collaborator_sessions#destroy'

  resources :movies
  resources :users
  resources :collaborators
  resources :welcome

  root 'welcome#index'

end
