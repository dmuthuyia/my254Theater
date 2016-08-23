Rails.application.routes.draw do

  get 'homes/show'

  devise_for :users
   resources :plays do
   		resources :reviews
   end
   root 'plays#index'

   resources :homes, only: [:show]
  
  
end
