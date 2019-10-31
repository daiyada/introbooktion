Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"
  resources :tweets, only: [:index, :create]
  resources :users, only: [:index] do
    member do
      get "meter" => "users#meter"
      get "rank" => "users#rank"
      get "make_friends" => "users#make_friends"
    end
  end
end
