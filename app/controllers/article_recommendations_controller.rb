class ArticleRecommendationsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @article.increment!(:recommended)
    redirect_to @article, notice: 'Thanks for the recommendation.'
  end

  def destroy
    @article = Article.find(params[:article_id])
    @article.increment!(:recommended, -1)
    redirect_to @article, notice: 'Sorry you did not enjoy that one.'
  end
end
