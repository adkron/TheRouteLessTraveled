Rails.application.routes.draw do
  resources :memes
  put "memes/:id/recommend", to: "memes#recommend", as: "meme_recommend"
  delete "memes/:id/unrecommend", to: "memes#unrecommend", as: "meme_unrecommend"

  resources :articles
  put "articles/:id/recommend", to: "articles#recommend", as: "article_recommend"
  delete "articles/:id/unrecommend", to: "articles#unrecommend", as: "article_unrecommend"

  root "home#index"
end
