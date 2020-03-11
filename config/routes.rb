

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :map, only: :show
  # user_chat GET    /user/chats/:user_id    user/chats#show
  scope :users do
    resources :chats, only: :show, param: :user_id
    resources :tutor_profiles, only: [:index, :show]
    resources :tutorings, only: [:index]

  end

  resources :tutor_profiles, only: [] do
    resources :tutorings, only: [:create]
  end

  resources :conversations do
    resources :messages
  end

end

