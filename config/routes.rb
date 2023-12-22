Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/users', to: 'users#create'

  get '/posts', to: 'posts#show'
  post '/posts', to: 'posts#create'
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
end
