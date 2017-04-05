Rails.application.routes.draw do
  resources :tasks
  get '/todo', to: 'tasks#todo'
  get '/doing', to: 'tasks#doing'
  get '/done', to: 'tasks#done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
