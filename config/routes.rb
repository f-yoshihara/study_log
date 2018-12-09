Rails.application.routes.draw do
  get 'post_its/index'
  get 'post_its/show'
  get 'post_its/new'
  get 'post_its/edit'
  get  'auth/'        => 'auth#new'
  post 'auth/create'  => 'auth#create'
  get  'auth/destroy' => 'auth#destroy'
  resources :users
  get 'contents/:id/new' => 'contents#new'
  resources :contents, except: [:new]
  resources :snippets
  resources :books
  get '/' => 'kanban#index'
end
