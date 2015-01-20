Rails.application.routes.draw do
  devise_for :users,
    :controllers => { :registrations => "registrations" }

  resources :posts
  resources :images
  resources :videos
  root :to => 'pages#home'
  get '/:display_name' => 'users#show', :as => :profile

end
