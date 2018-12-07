Rails.application.routes.draw do
  get 'contents/index'
  get 'contents/show'
  get 'contents/edit'
  get 'contents/new'
  resources :snippets
  resources :books
  get '/' => 'kanban#index'
end
