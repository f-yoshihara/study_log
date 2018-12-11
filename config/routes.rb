Rails.application.routes.draw do
  namespace :post_its do
    get  'kanban'    => 'kanban#index'
    get  'trash_can' => 'trash_can#index'
    get  ':id'       => 'parts#index'
    post 'parts/:id' => 'parts#create'
    get  'parts/:id' => 'parts#new'
  end
  resources :post_its, except: :show

  namespace :books do
    get 'kanban' => 'kanban#index'
  end
  resources :books
  
  get  'auth'         => 'auth#new'
  post 'auth/create'  => 'auth#create'
  get  'auth/destroy' => 'auth#destroy'
  resources :users
  resources :contents, except: [:new]
  get 'contents/:id/new' => 'contents#new'
  resources :snippets
end
