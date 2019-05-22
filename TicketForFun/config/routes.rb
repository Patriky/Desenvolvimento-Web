Rails.application.routes.draw do
	
  resources :salas
  resources :cinemas
  get 'login/index'
  resources :movies

  resources :users

  resources :welcome

  root 'welcome#index'

end
