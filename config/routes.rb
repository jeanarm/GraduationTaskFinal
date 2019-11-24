Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'welcome#index'
  # root'home#index'
  resources :profiles
  resources :home
  resources :welcome
  resources :courses do
    resources :materials, only: [:index, :new, :create, :destroy]
    resources :marks, only: [:index, :new, :create, :destroy]
  end
  resources :conversations do
    resources :messages
  end
   resources :messages
  
  resources :questions do
    resources :comments
  end
  devise_for :users, controllers: {registrations: "registrations"}
  resources :users, only: [:index,:show] 
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
