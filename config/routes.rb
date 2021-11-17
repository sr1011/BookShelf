Rails.application.routes.draw do
  
  root 'homes#top'
  get 'homes/about'

  namespace :users do
    resources :subscriptions, only: [:index, :show]
    resources :joins, only: [:new, :create]
    get "joins/confirm" => "joins#confirm"
    post "joins/confirm" => "joins#confirm"
    get "joins/complete" => "joins#complete"
  end
  
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  
  namespace :admins do
    resources :subscriptions, only: [:index, :new, :create, :destroy, :edit, :update]
    resources :books, only: [:new, :index, :create, :edit, :update, :destroy, :show]
    resources :genres, only: [:index, :edit, :create, :destroy, :update]
  end

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
