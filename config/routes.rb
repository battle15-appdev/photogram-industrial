Rails.application.routes.draw do
 
  root "photos#index"

  
  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  #get "/users/:id" => "user#show", as: :user

  #use "resources :users" if all 7 routes are needed, if not then specify which routes are needed with "only: :action_name"
  #resources :users, only: :show

  get ":username/liked" => "photos#liked", as: :liked_photos
  get ":username/feed" => "photos#feed", as: :liked_photos
  
  #list groups
  get ":username/followers" => "photos#followers", as: :liked_photos
  get ":username/following" => "photos#following", as: :liked_photos

  get "/:username" => "users#show", as: :user

end
