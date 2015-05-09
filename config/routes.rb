Rails.application.routes.draw do
  resources :memes do
    post "memes/:id/recommendation" => "meme_recommendations#create", on: :member, as: "recommendation"
  end

  resources :articles do
    post "articles/:id/recommendation" => "article_recommendations#create", on: :member, as: "recommendation"
  end

  root "home#index"
end
