Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :map, only: :show
  # user_chat GET    /user/chats/:user_id    user/chats#show
  scope :users do
    resources :chats, only: :show, param: :user_id
    resources :tutor_profiles, only: [:index, :show]

  end

  resources :tutor_profiles, only: [] do
    resources :tutorings, only: [:create]
  end

  resources :chat_rooms, only: [ :show ] do
    resources :messages, only: [ :create ]
  end

end

