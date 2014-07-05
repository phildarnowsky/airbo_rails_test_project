Rails.application.routes.draw do

  get 'charges/index'

  get 'charges' => 'charges#index'
    
  root 'charges#index'
  #resources :customers
  #resources :credit_cards

end
