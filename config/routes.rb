Rails.application.routes.draw do
  
  root to: 'homes#top'
  
  get 'homes/about' => 'homes#about', as: "about"
  
  devise_for :users,controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :books, only:[:new, :index, :show, :edit]
    
end
