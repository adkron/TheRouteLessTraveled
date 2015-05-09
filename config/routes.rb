Rails.application.routes.draw do
  resources :memes do
    post "recommend", on: :member
  end

  resources :articles do
    post "recommend", on: :member
  end

  root "home#index"
end
