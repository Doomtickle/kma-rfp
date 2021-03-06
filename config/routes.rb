Rails.application.routes.draw do
  resources :proposals
  resources :proposal_requests
  root                'static_pages#home'
  get    'help'                => 'static_pages#help'
  get    'about'               => 'static_pages#about'
  get    'contact'             => 'static_pages#contact'
  get    'signup'              => 'users#new'
  get    'login'               => 'sessions#new'
  get    'new-proposal'        => 'proposal_requests#new'
  post   'login'               => 'sessions#create'
  delete 'logout'              => 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :microposts,          only: [:new, :create, :edit, :update]
end
