class RecommendationsController < ApplicationController
  def create
    object = klass.find(params[:meme_id])
    object.increment!(:recommended)
    redirect_to object
  end

  def destroy
    object = klass.find(params[:meme_id])
    object.increment!(:recommended, -1)
    redirect_to object
  end

  private

  def klass
    params[:klass]
  end
end
