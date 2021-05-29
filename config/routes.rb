Rails.application.routes.draw do
  # resources :comments
  # resources :bookshelves
  resources :users do
    resources :comments, only: [:new, :create, :index]
  end
  resources :books do
    resources :comments, only: [:new, :create, :index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
