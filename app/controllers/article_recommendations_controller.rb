class ArticleRecommendationsController < RecommendableController
  def create
    redirect_to vote_up(Article, params[:id])
  end

  def destroy
    redirect_to vote_down(Article, params[:id])
  end
end
