Rails.application.routes.draw do
  get root to: "homes#top"
  devise_for :users
  get 'homes/top'
  
  resources :post_images, only: [:new, :index, :show]
  
  get 'homes/about', to: 'homes#about', as: 'about'
end