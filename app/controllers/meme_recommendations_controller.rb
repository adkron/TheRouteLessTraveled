class MemeRecommendationsController < RecommendationsController

  def model
    @meme ||= Meme.find(params[:meme_id])
  end
end
