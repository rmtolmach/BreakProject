class NeighborhoodsController < ApplicationController
  before_action :get_neighborhood, only: [:show, :edit, :update, :destroy]

  def get_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end

  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @activities = @neighborhood.activities
  end

  def edit
  end

  def update
    @neighborhood.update(neighborhood_params)
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
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end

  private

  def neighborhood_params
    params.require(:neighborhood).permit([:name, :description])
  end
end
