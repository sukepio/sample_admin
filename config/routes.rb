Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  
  devise_for :customers
  
  namespace :admin do
    resources :items
  end
  
  
    resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
end
