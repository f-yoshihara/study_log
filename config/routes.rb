Rails.application.routes.draw do
  namespace :books do
    get 'kanban/' => 'kanban#index'
  end
  resources :post_its
  get  'auth/'        => 'auth#new'
  post 'auth/create'  => 'auth#create'
  get  'auth/destroy' => 'auth#destroy'
  resources :users
  get 'contents/:id/new' => 'contents#new'
  resources :contents, except: [:new]
  resources :snippets
  resources :books
end
