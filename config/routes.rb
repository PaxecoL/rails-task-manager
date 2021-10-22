Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # List all tasks
  get 'tasks', to: 'tasks#index'

  # show create form (why new needs becoming before id?)
  get 'tasks/new', to: 'tasks#new'

  # List one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # create the task
  post 'tasks', to: 'tasks#create'

  # show edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # update the task
  patch 'tasks/:id', to: 'tasks#update'

  # delete the task
  delete 'tasks/:id', to: 'tasks#destroy'
end
