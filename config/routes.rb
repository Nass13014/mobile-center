Rails.application.routes.draw do
  resources :tickets

  get 'tickets/bon_reparation', :to => 'tickets#bon_reparation'
  devise_for :administrateurs



  root to: 'accueil#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
