Rails.application.routes.draw do
  resources :items, :suppliers, :sales

  root "items#index"
end
