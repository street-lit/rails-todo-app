Rails.application.routes.draw do
  get('todos', { to: 'tasks#index' })
  get('todos/new', { to: 'tasks#new' })
  get('/todos/:id', { to: 'tasks#show' })
end
