Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # List tasks
  get 'tasks', to: 'tasks#index'

  # Create a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # show details about the task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update tasks
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update', as: :update_task
end
