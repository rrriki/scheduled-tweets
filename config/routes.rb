Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "main#index"
  get "about", to: "about#index", as: "about"

  get "register", to: "registration#register"
  post "register", to: "registration#create"

  get "sign_in", to: "session#sign_in"
  post "sign_in", to: "session#create"

  get "password", to: "password#edit", as: "edit_password"
  patch "password", to: "password#update"

  get "password/reset", to: "reset_password#reset"
  post "password/reset", to: "reset_password#sendResetMail"

  get "password/reset/edit", to: "reset_password#edit"
  patch "password/reset/edit", to: "reset_password#update"

  get "auth/twitter/callback", to: "omniauth_callback#twitter"

  delete "logout", to: "session#destroy"  

  resource :twitter_accounts
  resources :tweets
end
