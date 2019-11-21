Rails.application.routes.draw do
  devise_for :users
  root to: "email#index"
  resources :tasks, except: [:show]
  resources :home
  resources :email, only:[:show, :create, :destroy, :update, :index]
  #post '/email/:id', to: 'email#destroy', as: 'destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
