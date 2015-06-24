module Recommendations

  def create
    model.increment!(:recommended)
    redirect_to model, notice: 'Thanks for the recommendation.'
  end

  def destroy
    model.increment!(:recommended, -1)
    redirect_to model, notice: 'Sorry you did not enjoy that one.'
  end
end