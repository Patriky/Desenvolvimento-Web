Rails.application.routes.draw do
	
  get 'login/index'

  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

  resources :movies
  resources :users
  resources :collaborators
  resources :welcome

  root 'welcome#index'

end
