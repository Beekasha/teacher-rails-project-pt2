Rails.application.routes.draw do
  resources :klasses
  resources :comments
  root to: 'pages#home'
  devise_for :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
