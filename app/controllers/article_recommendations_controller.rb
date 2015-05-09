require "recommendable"

class ArticleRecommendationsController < ApplicationController
  include Recommendable
  private

  def klass
    Article
  end
end
