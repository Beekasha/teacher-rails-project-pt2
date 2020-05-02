Rails.application.routes.draw do
 
  resources :klasses
  resources :students do
     resources :parents
  end
  resources :comments
  root to: 'pages#home'
  devise_for :teachers

  get 'needs_parent', :to => 'students#need_parent'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
