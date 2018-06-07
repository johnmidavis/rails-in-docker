Rails.application.routes.draw do
  resources :rumors
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#home"
  get "/:page" => "static#show"
end
