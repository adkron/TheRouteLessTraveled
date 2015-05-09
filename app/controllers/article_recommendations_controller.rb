class ArticleRecommendationsController < ApplicationController
  def create
    @article = Article.find(params[:id])
    @article.increment!(:recommended)
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.increment!(:recommended, -1)
    redirect_to @article
  end
end
