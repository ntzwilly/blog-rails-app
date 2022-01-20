Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end  

  resources :posts, only: [:new, :create] do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end

  root to: "users#index"
end
