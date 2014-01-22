ChallengeTodomvcRails::Application.routes.draw do
  root :to => 'todos#index'
  resources :todos, :only => [:index, :show, :create, :edit, :update]
end
