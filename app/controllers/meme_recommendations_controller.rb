class MemeRecommendationsController < ApplicationController

  def create
    @meme = Meme.find(params[:meme_id])
    @meme.increment!(:recommended)
    redirect_to @meme, notice: 'Thanks for the recommendation.'
  end

  def destroy
    @meme = Meme.find(params[:meme_id])
    @meme.increment!(:recommended, -1)
    redirect_to @meme, notice: 'Sorry you did not enjoy that one.'
  end
end
