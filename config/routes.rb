ChsdeskSti::Application.routes.draw do


  resources :activities


#Devise with CanCan and Twitter Bootstrap---begin
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
#Devise with CanCan and Twitter Bootstrap---end
end