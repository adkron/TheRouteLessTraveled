class ArticleRecommendationsController < ApplicationController
  def create
    @article = Article.find(params[:id])
    @article.increment!(:recommended)
    redirect_to @article
  end
end
