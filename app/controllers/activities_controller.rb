class ActivitiesController < ApplicationController
  def index
    @categories = Activity.pluck(:category).uniq
    @subcategories = Activity.pluck(:subcategory).uniq
    @neighborhoods = []
    category = params["Category"]
    subcategory = params["Subcategory"]
    neighborhood_id = params[:neighborhood][:neighborhood_id] unless params[:neighborhood] == nil
    if category != nil && category != ''
      @activities = Activity.where(category: category)
    elsif subcategory != nil && subcategory != ''
      @activities = Activity.where(subcategory: subcategory)
    elsif neighborhood_id != nil && neighborhood_id != ''
      @activities = Activity.where(neighborhood_id: neighborhood_id)
    else
      @activities = Activity.all
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
    @categories = Activity.pluck(:category).uniq
    @subcategories = Activity.pluck(:subcategory).uniq
    @price_range = Activity.pluck(:price_range).uniq
    @method = Activity.pluck(:method).uniq
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def update
    activity = Activity.find(params[:id])
    activity.update(activity_params)
    redirect_to activity.neighborhood
  end

  def new
    @activity = Activity.new
    @categories = Activity.pluck(:category).uniq
    @subcategories = Activity.pluck(:subcategory).uniq
    @price_range = Activity.pluck(:price_range).uniq
    @method = Activity.pluck(:method).uniq
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def create
    #need to add in neighborhood_id
    activity = Activity.create(activity_params) do |a|
      a.neighborhood = Neighborhood.find(params[:neighborhood_id])
    end
    redirect_to activity.neighborhood
  end

  def destroy
    activity = Activity.destroy(params[:id])
    redirect_to activity.neighborhood
  end

  private

  def activity_params
    params.require(:activity).permit([:name, :category, :subcategory, :description, :sunday_morning, :sunday_afternoon, :sunday_evening, :monday_morning, :monday_afternoon, :monday_evening, :tuesday_morning, :tuesday_afternoon, :tuesday_evening, :wednesday_morning, :wednesday_afternoon, :wednesday_evening, :thursday_morning, :thursday_afternoon, :thursday_evening, :friday_morning, :friday_afternoon, :friday_evening, :saturday_morning, :saturday_afternoon, :saturday_evening, :website, :price_range, :minutes_from_ada, :method, :address, :city, :state, :country, :zip])
  end
end
