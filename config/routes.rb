Rails.application.routes.draw do
  get "/" ,to: "servers#index"
  resources :servers, only: [:index, :new, :create]
end
