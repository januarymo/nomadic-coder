

Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resource :map, only: :show
  # user_chat GET    /user/chats/:user_id    user/chats#show
  scope :users do
    resources :chats, only: :show, param: :user_id
    resources :tutor_profiles, only: [:index, :show]

  end

  resources :tutor_profiles, only: [] do
    resources :tutorings, only: [:create]
  end


  resources :conversations do
    resources :messages

  end

end

