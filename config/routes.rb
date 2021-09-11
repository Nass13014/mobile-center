Rails.application.routes.draw do
  devise_for :admins
  resources :tickets

  get 'tickets/bon_reparation', :to => 'tickets#bon_reparation'



  root to: 'accueil#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
