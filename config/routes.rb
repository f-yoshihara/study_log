Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'contents/:id/new' => 'contents#new'
  resources :contents, except: [:new]
  resources :snippets
  resources :books
  get '/' => 'kanban#index'
end
