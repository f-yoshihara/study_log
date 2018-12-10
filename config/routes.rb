Rails.application.routes.draw do
  namespace :post_its do
    post 'parts/:id' => 'parts#create' #post_its_parts_path
    get 'parts/:id' => 'parts#new'
    get 'parts/:id/index' => 'parts#index'
    get 'kanban/' => 'kanban#index'
  end
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
