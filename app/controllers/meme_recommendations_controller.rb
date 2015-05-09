class MemeRecommendationsController < RecommendableController
  def create
    redirect_to vote_up(Meme, params[:id])
  end

  def destroy
    redirect_to vote_down(Meme, params[:id])
  end
end
