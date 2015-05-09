Rails.application.routes.draw do
  resources :memes do
    post "memes/:id/recommendation" => "meme_recommendations#create", on: :member, as: "recommendation"
    delete "memes/:id/recommendation" => "meme_recommendations#destroy", on: :member
  end

  resources :articles do
    post "articles/:id/recommendation" => "article_recommendations#create", on: :member, as: "recommendation"
    delete "articles/:id/recommendation" => "article_recommendations#destroy", on: :member
  end

  root "home#index"
end
