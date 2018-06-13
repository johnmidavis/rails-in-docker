Rails.application.routes.draw do
  resources :rumors
  root to: "static#home"
  get "/static/:page" => "static#show"

  devise_for :users,
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
end
