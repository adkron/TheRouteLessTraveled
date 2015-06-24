require "recommendations"

class MemeRecommendationsController < ApplicationController
  include Recommendations

  def model
    @meme ||= Meme.find(params[:meme_id])
  end
end
