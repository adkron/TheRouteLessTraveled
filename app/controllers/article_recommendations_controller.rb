class ArticleRecommendationsController < RecommendationsController

  def model
    @article ||= Article.find(params[:article_id])
  end
end
