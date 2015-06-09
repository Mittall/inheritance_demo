Rails.application.routes.draw do
  
  resources :users

  resources :addresses 

  resources :home_address, controller: 'addresses', type: 'Home Address' 
	resources :preferred_address, controller: 'addresses', type: 'Preferred Address'
  resources :work_address, controller: 'addresses', type: 'Work Address'
  
	root 'users#index'

  get '/addresses' => 'addresses#index', :as => :allAddress

	#get '/addresses/:address_id/home_addresses/index' => 'home_addresses#index', :as => :home

	get '/addresses/new/:type' => 'addresses#new', :as => :address_type

  get '/home_address/new' => 'addresses#new', :as => :haddress

	get '/preferred_address/new' => 'addresses#new', :as => :paddress

	get '/work_address/new' => 'addresses#new', :as => :waddress

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
