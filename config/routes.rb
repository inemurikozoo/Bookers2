Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  
  get 'home/about' => 'home#about', as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only:[:new, :index, :show]
end
