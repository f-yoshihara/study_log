Rails.application.routes.draw do
  resources :users
  get 'contents/:id/new' => 'contents#new'
  resources :contents, except: [:new]
  resources :snippets
  resources :books
  get '/' => 'kanban#index'
end
