Rails.application.routes.draw do
  resources :snippets
  resources :books
  get '/' => 'kanban#index'
end
