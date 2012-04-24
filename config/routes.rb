Forum::Application.routes.draw do
  resources :partitions, :only => [:show] do
    resources :topics
  end

  resources :topics do
    resources :posts
  end

  devise_for :users
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

  root :to => 'topics#index'

  resource :user_profile, :only => [:show, :edit, :update], :controller_name => 'user_profile'
end

