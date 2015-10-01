Rails.application.routes.draw do
  root :to => 'todos#index'
  resources :todos do
    resources :tasks, :only => [:create]
  end
end
