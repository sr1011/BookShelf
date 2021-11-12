Rails.application.routes.draw do
  namespace :admins do
    resources :subscriptions, only: [:index, :new, :create, :destroy, :edit, :update]
    resources :books, only: [:new, :index, :create, :edit, :update, :destroy, :show]
  end
  
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  
  
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'homes#top'
get 'homes/about'

end
