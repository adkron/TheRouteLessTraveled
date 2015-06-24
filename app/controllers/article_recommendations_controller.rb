require "recommendations"

class ArticleRecommendationsController < ApplicationController
  include Recommendations

  def model
    @article ||= Article.find(params[:article_id])
  end
end
