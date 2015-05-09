Rails.application.routes.draw do
  resources :memes
  post "memes/:id/recommendation" => "recommendations#create", as: "meme_recommendation", defaults: { klass: Meme }
  delete "memes/:id/recommendation" => "recommendations#destroy", defaults: { klass: Meme }

  resources :articles
  post "articles/:id/recommendation" => "recommendations#create", as: "article_recommendation", defaults: { klass: Article }
  delete "articles/:id/recommendation" => "recommendations#destroy", defaults: { klass: Article }

  root "home#index"
end
