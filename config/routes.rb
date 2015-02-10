Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users do
  	member do
  		post :save_departments
  	end
  end
end
