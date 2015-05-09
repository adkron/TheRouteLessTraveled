class RecommendableController < ApplicationController
  private
  def vote_up(klass, id)
    object = klass.find(id)
    object.increment!(:recommended)
    object
  end

  def vote_down(klass, id)
    object = klass.find(id)
    object.increment!(:recommended, -1)
    object
  end

end
