class MemeRecommendationsController < ApplicationController
  def create
    @meme = Meme.find(params[:id])
    @meme.increment!(:recommended)
    redirect_to @meme
  end
end
