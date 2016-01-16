Rails.application.routes.draw do

  resources :news_events
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations' }
 # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'pages#home'
  get 'work',   :to => 'pages#work'
  get 'people',   :to => 'pages#people'
  get 'teams',   :to => 'pages#teams'
  get 'skill',   :to => 'pages#skill'
  get 'fiit',   :to => 'pages#fiit'
  get 'agri',   :to => 'pages#agri'
  get 'animal',   :to => 'pages#animal'
  get 'ruraldev',   :to => 'pages#ruraldev'
  get 'power',   :to => 'pages#power'
  get 'finance',   :to => 'pages#finance'
  get 'edu',   :to => 'pages#edu'
  get 'blogg',   :to => 'pages#blogg'
  get 'blog',   :to => 'blog'
  get 'news_events',   :to => 'news_events#index'
  get 'privacy',   :to => 'pages#privacy'
  get 'about',   :to => 'pages#about'
  get 'contact',   :to => 'pages#contact'
  get 'advisorybody',   :to => 'pages#advisorybody'
  get 'governingcouncil',   :to => 'pages#governingcouncil'
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
