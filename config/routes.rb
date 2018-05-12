Rails.application.routes.draw do
  get 'todo/show/:id', to:'todo#show'
  get 'todo/index/', to:'todo#index'
end