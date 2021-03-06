Warehouse::Application.routes.draw do
  devise_for :users, 
             :controllers => {:sessions => "user/sessions", 
                              :registrations => "user/registrations",
                              :passwords => "user/passwords"
                              }

  authenticated :user do
  	root :to => 'dashboard#index'
	end

  get "/products/search", to: "products#search"

  resources :suppliers
  resources :users
  resources :products
  resources :dashboard

  resources :areas do
    resources :shelves do
      resources :layers
    end
  end

  resources :out_orders do
    get 'change', :on => :member
  end

  resources :in_orders
  root :to => 'welcome#index'

  namespace :user do
  end
end
