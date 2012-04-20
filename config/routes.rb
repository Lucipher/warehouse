Warehouse::Application.routes.draw do
  devise_for :users, 
             :controllers => {:sessions => "user/sessions", 
                              :registrations => "user/registrations",
                              :passwords => "user/passwords"
                              }

  authenticated :user do
  	root :to => 'dashboard#index'
	end
  resources :suppliers
  resources :users
  resources :products
  resources :dashboard
  resources :areas
  resources :shelves
  resources :layers

  resources :out_orders do
    get 'change', :on => :member
  end

  resources :in_orders
  root :to => 'welcome#index'

  namespace :user do
  end
end
