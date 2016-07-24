Rails.application.routes.draw do
  resources :polls
  get "users_list", :to => "users#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
