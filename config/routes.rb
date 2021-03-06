Rails.application.routes.draw do
    root to: 'pages#home'

    devise_for :users

    resources :users, only: [:show]
    resources :events

    get "about" => "pages#about"

    resources :photos

end
