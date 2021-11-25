Rails.application.routes.draw do
  
  root 'homes#top'
  get 'homes/about'
  get '/search', to: 'searchs#search'

#利用者
  
  namespace :users do
    get 'users/unsubscribe'
    patch 'users/withdraw'
    resources :users, only: [:show, :edit, :update]
    resources :subscriptions, only: [:index, :show]
    resources :join_carts, only: [:index, :create, :destroy]
    get "joins/confirm" => "joins#confirm"
    post "joins/confirm" => "joins#confirm"
    get "joins/complete" => "joins#complete"
    resources :books, only: [:index, :show] do
     resource :book_comments, only: [:create, :destroy]
     resource :favorites, only: [:create, :destroy]
    end
    resources :book_carts, only: [:create, :destroy]
    resources :contacts, only: [:new, :create, :destroy, :index]
  end
  
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  registrations: 'users/registrations'
}

#管理者
  
  namespace :admins do
    resources :subscriptions, only: [:index, :new, :create, :destroy, :edit, :update]
    resources :books, only: [:new, :index, :create, :edit, :update, :destroy]
    resources :genres, only: [:index, :edit, :create, :destroy, :update]
    resources :contacts, only: [:index]
    resources :users, only: [:index, :show, :edit, :update]
  end

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
