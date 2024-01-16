Rails.application.routes.draw do
  get root to: "homes#top"
  devise_for :users
  get 'homes/top'
  get 'homes/about', to: 'homes#about', as: 'about'
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  
  resources :users, only: [:show, :edit]
end