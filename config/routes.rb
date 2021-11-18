Rails.application.routes.draw do
  
  root 'homes#top'
  get 'homes/about'

  namespace :users do
    resources :subscriptions, only: [:index, :show]
    resources :join_carts, only: [:index, :create, :destroy]
    get "join_carts/confirm" => "join_carts#confirm"
    post "join_carts/confirm" => "join_carts#confirm"
    get "join_carts/complete" => "join_carts#complete"
    resources :books, only: [:index, :show] do
     resources :book_comments, only: [:create, :destroy]
    end
    resources :book_carts, only: [:create, :destroy]
  end
  
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  
  namespace :admins do
    resources :subscriptions, only: [:index, :new, :create, :destroy, :edit, :update]
    resources :books, only: [:new, :index, :create, :edit, :update, :destroy]
    resources :genres, only: [:index, :edit, :create, :destroy, :update]
  end

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
