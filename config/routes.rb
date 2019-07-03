Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  root 'chatroom#index'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
