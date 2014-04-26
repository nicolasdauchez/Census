Census::Application.routes.draw do
#  devise_for :users

  # devise_scope :user do
  #   get 'users/sign_up' => 'users/registrations#new', :as => :new_user_registration
  #   post 'users/sign_up' => 'users/registrations#create'
  #   post 'users/sign_in' => 'users/session#create'
  # end

#  devise_for :users, :path_prefix => "my"
 # resources :users

#  devise_for :user, :controllers  => { :registrations => "users/registrations", :sessions => "users/session" }
devise_for :user, :controllers  => { :registrations => "users/registrations", :sessions => "users/sessions" }

  match 'module/', :to => 'modules#show', :via => [:get]
  match 'module/show', :to => 'modules#show', :via => [:get]
  match 'module/list', :to => 'modules#list', :via => [:get]
  match 'module/register', :to => 'modules#list', :via => [:post]
  
  get "website/index" # , :to => "intranet#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'website#index'

  match "/about", :to => "website#about", :via => [:get]


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
