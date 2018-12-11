Rails.application.routes.draw do
  namespace :post_its do
    get  'kanban'    => 'kanban#index'
    get  ':id'       => 'parts#index'
    post 'parts/:id' => 'parts#create'
    get  'parts/:id' => 'parts#new'
  end
  resources :post_its, except: :show
  # scope module: :post_its do
  #   get  'post_it/:id'      => 'parts#index'
  #   post 'post_it/parts/:id' => 'parts#create'
  #   get  'post_it/parts/:id' => 'parts#new'
  # end
  resources :books
  namespace :books do
    get 'kanban' => 'kanban#index'
  end
  get  'auth'         => 'auth#new'
  post 'auth/create'  => 'auth#create'
  get  'auth/destroy' => 'auth#destroy'
  resources :users
  resources :contents, except: [:new]
  get 'contents/:id/new' => 'contents#new'
  resources :snippets
end
