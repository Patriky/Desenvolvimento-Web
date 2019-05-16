Rails.application.routes.draw do
	
  get 'login/index'
  resources :movies

  resources :users

  resources :collaborators

  resources :welcome

  root 'welcome#index'

end
