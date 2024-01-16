Rails.application.routes.draw do
  get root to: "homes#top"
  devise_for :users
  get 'homes/top'
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  
  get 'homes/about', to: 'homes#about', as: 'about'
end