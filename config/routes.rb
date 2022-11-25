Rails.application.routes.draw do
  get 'daily_status_updates/new'
  root 'projects#index'
  resources :tasks
  resources :projects
  devise_for :users
  resources :daily_status_updates
  patch '/tasks/:id/update_status/:type', to: 'tasks#update_status', as: :task_update_status
  get '/report', to: 'report#reporter'
end
