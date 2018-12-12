Rails.application.routes.draw do
  resources :post_its, except: :show
  namespace :post_its do
    get  'kanban'             => 'kanban#index'
    get  'kanban/backlog'     => 'kanban#backlog'
    get  'kanban/in_progress' => 'kanban#in_progress'
    get  'kanban/done'        => 'kanban#done'
    get  'kanban/deleted'     => 'kanban#deleted'
    get  'trash_can'     => 'trash_can#index'
    get  'parts/:id'     => 'parts#index'
    post 'parts/:id'     => 'parts#create'
    get  'parts/:id/new' => 'parts#new'
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
