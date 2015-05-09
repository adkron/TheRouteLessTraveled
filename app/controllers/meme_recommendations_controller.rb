class MemeRecommendationsController < ApplicationController
  def create
    @meme = Meme.find(params[:id])
    @meme.increment!(:recommended)
    redirect_to @meme
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.increment!(:recommended, -1)
    redirect_to @meme
  end
end
