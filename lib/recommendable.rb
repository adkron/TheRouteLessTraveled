module Recommendable
  def create
    object = klass.find(params[:id])
    object.increment!(:recommended)
    redirect_to object
  end

  def destroy
    object = klass.find(params[:id])
    object.increment!(:recommended, -1)
    redirect_to object
  end
end
