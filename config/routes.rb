Rails.application.routes.draw do
 
  root "photos#index"

  
  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  #get "/users/:id" => "user#show", as: :user

  #use "resources :users" if all 7 routes are needed, if not then specify which routes are needed with "only: :action_name"
  resources :users, only: :show

end
