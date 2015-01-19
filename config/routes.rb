Rails.application.routes.draw do
  devise_for :users,
    :controllers => { :registrations => "registrations" }

  resources :posts

  root :to => 'pages#home'
  get 'pages/:page_name' => 'pages#index', :as => :pages
end
