Rails.application.routes.draw do


  get 'propiedades/:id', to: 'public_properties#show', as: 'public_properties_show'

  get 'categorias/:name', to: 'public_properties#category', as: 'public_categories'

  get 'public_properties/search'

  post 'buscar', to: 'public_properties#search', as: 'search_properties'

  devise_for :agents
  devise_scope :agent do
    get 'agents/index', to: 'agents/registrations#index', as: 'agents_index'
  end
  resources :properties
  post 'properties/photos', to: 'properties#upload'
  resources :property_types
  resources :property_categories
  resources :property_photos
  resources :cities
  root 'public_properties#index'
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
