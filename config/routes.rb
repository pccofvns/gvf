Rails.application.routes.draw do

  resources :news_events
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations' }
 # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'pages#home'
  
  get 'work',   :to => 'pages#work'
  
  get 'agri',   :to => 'teams#agri'
  get 'b3p',   :to => 'teams#b3p'
  get 'edu',   :to => 'teams#edu'
  get 'energy',   :to => 'teams#energy'
  get 'env',   :to => 'teams#env'
  get 'industry',   :to => 'teams#industry'
  get 'operations',   :to => 'teams#operations'
  get 'finance',   :to => 'teams#finance'
  get 'pubhealth',   :to => 'teams#pubhealth'
  get 'skill',   :to => 'teams#skill'
  get 'tourism',   :to => 'teams#tourism'
  get 'urbdev',   :to => 'teams#urbdev'

  get 'blog',   :to => 'blog'

  get 'news_events',   :to => 'news_events#index'

  get 'about',   :to => 'about#about'
  get 'advisorybody',   :to => 'about#advisorybody'
  get 'governingcouncil',   :to => 'about#governingcouncil'
  get 'directors',   :to => 'about#directors'
  get 'people',   :to => 'about#people'

  get 'contact',   :to => 'pages#contact'
  get 'links',   :to => 'pages#links'
  get 'pubs',   :to => 'pages#pubs'

  get 'subscribe'  => 'newsletters#new'

  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'signup'  => 'users#new'

  resources :users
  resources :newsletters

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

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
