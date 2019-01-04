Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :routine_poses
  resources :routines
  resources :yoga_poses, only: [:index, :show, :new, :create, :edit, :update]
  resources :body_areas, only: [:index, :show]
  post "/yoga_poses/:id/likes", to: "yoga_poses#incrementLikes"
  #custom route, http verb, url and action in controller
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
