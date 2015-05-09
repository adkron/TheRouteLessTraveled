Rails.application.routes.draw do
  resources :memes do
    resource :recommendation, only: [:create, :destroy], defaults: { klass: Meme }
  end

  resources :articles do
    resource :recommendation, only: [:create, :destroy], defaults: { klass: Article }
  end

  root "home#index"
end
