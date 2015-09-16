Rails.application.routes.draw do
  get('/todos',        { to: 'tasks#index' })
  get('/todos/new',    { to: 'tasks#new' })
  get('/todos/:id',    { to: 'tasks#show' })
  post('/todos',       { to: 'tasks#create' })
  delete('/todos/:id', { to: 'tasks#destroy' })
  put('/todos/:id',    { to: 'tasks#create' })
end
