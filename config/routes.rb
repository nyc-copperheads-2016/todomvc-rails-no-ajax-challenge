Rails.application.routes.draw do
  root 'todos#index'
  resources :todos do
    resources :tasks, :only => [:create]
  end
end
