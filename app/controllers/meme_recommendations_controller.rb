require "recommendable"

class MemeRecommendationsController < ApplicationController
  include Recommendable
  private

  def klass
    Meme
  end
end
