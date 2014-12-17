Rails.application.routes.draw do
  root 'about#index'
  match '/about', to: 'about#index', via: 'get'
  match '/about/sample', to: 'about#sample', via: 'get'  
  match '/mails', to: 'mails#index', via: 'get'
  match '/mails/start', to: 'mails#start', via: 'get'
  match '/mails/index2', to: 'mails#index2', via: 'get'
  match '/contents', to: 'contents#subcategory_1', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/storages', to: 'storages#index', via: 'get'
  match '/storages', to: 'storages#destroy', via: 'delete'

  resources :storages

  resources :subcategories
  
  resources :users

  resources :sessions, only:[ :new, :create, :destroy]

  resources :contents do
    member do
      get :reflect
    end
  end

  resources :categories
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
