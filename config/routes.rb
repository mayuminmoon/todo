Rails.application.routes.draw do
  resources :todo_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'categories', to: 'categories#index'
  get 'categories/new', to: 'categories#new', as: 'new_category'
  resources :categories
  resources :todo_items

  root "todo_lists#index"
  #get 'categories/:id', to: 'categories#show', as: 'show_category'
  #get 'categories/:id', to: 'categories#edit', as: 'edit_category'
end
