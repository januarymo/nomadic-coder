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


  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end

end

