Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :employers
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  devise_for :models


  root "pages#home"
  get "recruiter" => "pages#recruiter" #creates recruiter path
  get "employer" => "pages#employer" #creates employer  path
  get "postings" => "pages#postings" #creates postings path
  get "testing" => "pages#testing" #creates test path
  get "learn" => "pages#learn" #creates learn path
  get "recruiter_dash" => "pages#recruiter_dash" #creates recruiter_dash path
  get "employer_dash" => "pages#employer_dash" #creates employer_dash path
  get "how_to_recruiter" => "pages#how_to_recruiter" #creates how_to_recruiter path
  get "how_to_employer" => "pages#how_to_employer" #creates how_to_employer path
  get "payments" => "pages#payments" #creates payments path

 

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
