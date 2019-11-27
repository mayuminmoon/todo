Rails.application.routes.draw do
  resources :todo_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "todo_lists#index"
  get 'categories', to: 'categories#index'
  get 'categories/new', to: 'categories#new', as: 'new_category'
  resources :categories
  #get 'categories/:id', to: 'categories#show', as: 'show_category'
  #get 'categories/:id', to: 'categories#edit', as: 'edit_category'
end
