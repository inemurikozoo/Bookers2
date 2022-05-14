Rails.application.routes.draw do
  
  root to: 'homes#top'
  
  get 'homes/about' => 'homes#about', as: "about"
  
  devise_for :users,controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  
  post 'books' => 'books#create', as: 'book_create'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :books, only:[:new, :index, :show, :edit, :update]
    
end
