Rails.application.routes.draw do
  devise_for :users
  get 'homes/top'
  get root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'
end
