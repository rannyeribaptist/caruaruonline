Rails.application.routes.draw do
  resources :promotional_banners
  resources :stores
  devise_for :admins
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
