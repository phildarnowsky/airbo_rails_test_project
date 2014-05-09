SourceDir::Application.routes.draw do
  resources :customers
  resources :charges

  root to: "charges#index"
end
