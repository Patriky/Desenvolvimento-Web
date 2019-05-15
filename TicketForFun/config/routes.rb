Rails.application.routes.draw do
	
  get 'login/index'
  resources :movies

  resources :users

  resources :welcome

  root 'welcome#index'

end
