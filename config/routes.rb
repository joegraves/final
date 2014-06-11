Rails.application.routes.draw do

 # Specify a custom home page
  get "/" => "home#index"


  # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'


  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'


# Resource: Dogs

  # --- Create
  get "/dogs/new" => 'dogs#new'
  post "/dogs" => 'dogs#create'

  # --- Read
  #get "/dogs" => 'dogs#index'
  #get "/dogs/:id" => 'dogs#show'

  # -- Update
  get "/dogs/:id/edit" => 'dogs#edit'
  patch "/dogs/:id" => 'dogs#update'

  # --- Delete
  delete "/dogs/:id" => 'dogs#destroy'


# Resource: Runs

  # --- Create
  get "/runs/new" => 'runs#new'
  post "/runs" => 'runs#create'

  # --- Read
  get "/runs" => 'runs#index'
  get "/runs/:id" => 'runs#show'

  # -- Update
  get "/runs/:id/edit" => 'runs#edit'
  patch "/runs/:id" => 'runs#update'

  # --- Delete
  delete "/runs/:id" => 'runs#destroy'  # Resource: Breeds


# Resource: Breeds

  # --- Read
  get "/breeds" => 'breeds#index'




















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
