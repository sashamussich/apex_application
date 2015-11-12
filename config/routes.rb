Rails.application.routes.draw do
  get "home/welcome", :as => :welcome
  get 'home/index'

  root :to => "home#index"

    
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'confirmations/confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => { 
    :registrations => "registrations/registrations",
    :confirmations => "confirmations/confirmations",
    :sessions => "milia/sessions", 
    :passwords => "milia/passwords", 
  }

  resources :members do
    get '/admin_profile', on: :member
  end
end
