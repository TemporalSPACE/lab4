Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets, except: [:edit, :update]  


 # root "monsters#index"
  root "tweets#index"

  # Resource Routing: the Rails Defauls Resource routing allows you to
  # quickly declare all of the common routes for a given resourceful controller.
  # A single call to resources can declare all of the necessary routes for your
  # index, show, new, edit, create, update, and destroy actions.
end