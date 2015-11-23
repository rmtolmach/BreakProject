class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @activities = @neighborhood.activities
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])
  end

  def update
    neighborhood = Neighborhood.find(params[:id])
    neighborhood.update(neighborhood_params)
    redirect_to neighborhoods_path
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.create(neighborhood_params)
    redirect_to neighborhoods_path
  end

  def destroy
    Neighborhood.destroy(params[:id])
    redirect_to neighborhoods_path
  end

  private

  def neighborhood_params
    params.require(:neighborhood).permit([:name, :description])
  end
end
