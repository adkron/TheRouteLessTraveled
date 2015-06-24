Rails.application.routes.draw do
  resources :memes do
    resource :recommendation, only: [:create, :destroy], controller: :meme_recommendations
  end

  resources :articles do
    resource :recommendation, only: [:create, :destroy], controller: :article_recommendations
  end

  root "home#index"
end
