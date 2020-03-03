Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :map, only: :show
  # user_chat GET    /user/chats/:user_id    user/chats#show
  namespace :user do
    resources :chats, only: :show, param: :user_id
    resource :tutor, only: [:create, :new]
  end
end

