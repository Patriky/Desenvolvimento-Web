Rails.application.routes.draw do
	
  get 'login/index'
  resources :movies

  resources :welcome

  root 'welcome#index'

end
