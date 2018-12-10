Rails.application.routes.draw do
  resources :post_its, except: :show
  namespace :post_its do
    get  'kanban'    => 'kanban#index'
    post 'parts/:id' => 'parts#create' #post_its_parts_path
    get  'parts/:id' => 'parts#new'
    get  '/:id'      => 'parts#index'
  end
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
