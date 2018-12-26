Rails.application.routes.draw do
  resources :practitioners, only: [:index, :show, :new, :create, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :routine_poses
  resources :routines
  resources :yoga_poses, only: [:index, :show, :new, :create, :edit, :update]
  resources :body_areas, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
