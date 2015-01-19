Rails.application.routes.draw do
  devise_for :users,
    :controllers => { :registrations => "registrations" }

  resources :posts
  resources :images
  resources :videos
  root :to => 'pages#home'
  get 'pages/:page_name' => 'pages#index', :as => :pages
end
