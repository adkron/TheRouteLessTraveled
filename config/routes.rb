Rails.application.routes.draw do
  resources :memes

  resources :articles

  root "home#index"
end
