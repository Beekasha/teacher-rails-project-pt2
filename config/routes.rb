Rails.application.routes.draw do
  resources :students 
  resources :comments
  resources :klasses
  root to: 'pages#home'
  devise_for :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
