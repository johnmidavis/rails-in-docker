Rails.application.routes.draw do
  resources :fibbles
  resources :rumors
  root to: "static#home"
  get "/static/:page" => "static#show"

  devise_for :users,
             path: "",
             path_names:{
                sign_in: 'login',
                sign_out:'logout',
                registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
end
