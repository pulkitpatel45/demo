Rails.application.routes.draw do
  get 'daily_status_updates/new'
  root 'projects#index'
  resources :tasks
  resources :projects
  devise_for :users
  resources :daily_status_updates
  patch '/tasks/:id/update_status/:type', to: 'tasks#update_status', as: :task_update_status
  get '/contact_us', to: 'contact_us#report', as: :contact_us
  get '/users', to: 'users#index'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
