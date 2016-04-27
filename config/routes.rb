Rails.application.routes.draw do
  devise_for :users
  resources :suppliers, :sales
  resources :items do
  	resources :item_images
  end

  root "items#index"
end
