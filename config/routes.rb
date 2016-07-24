Rails.application.routes.draw do
  resources :users, :only => [:index] do
    resources :polls
    get "dashboard"
  end
  get "users_list", :to => "users#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
