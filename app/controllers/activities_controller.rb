class ActivitiesController < ApplicationController
  def index
    @categories = Activity.pluck(:category).uniq
    @subcategories = Activity.pluck(:subcategory).uniq
    category = params["Category"]
    subcategory = params["Subcategory"]
    neighborhood_id = params[:neighborhood][:neighborhood_id] unless params[:neighborhood] == nil
    price_range = params["Price"]
    time = params["Time"]
    if params.length == 5
      filter_activities(category, subcategory, neighborhood_id, price_range, time)
    else
      @activities = Activity.all
    end
  end

  def filter_activities(category, subcategory, neighborhood_id, price_range, time)
    if category != nil && category != ''
      @activities = Activity.where(category: category)
      @filtered_by = "Category: " + category
    elsif subcategory != nil && subcategory != ''
      @activities = Activity.where(subcategory: subcategory)
      @filtered_by = "Subcategory: " + subcategory
    elsif neighborhood_id != nil && neighborhood_id != ''
      @activities = Activity.where(neighborhood_id: neighborhood_id)
      @filtered_by = "Neighborhood: " + Neighborhood.find(neighborhood_id).name
    elsif price_range != nil && price_range != ''
      @activities = Activity.where(price_range: price_range)
      @filtered_by = "Price Range: " + price_range
    elsif time != nil && time != ''
      @filtered_by = "Time: " + time.gsub("_", " ").titleize + "s"
      @activities = Activity.where(sunday_morning: true) if time == "sunday_morning"
      @activities = Activity.where(sunday_afternoon: true) if time == "sunday_afternoon"
      @activities = Activity.where(sunday_evening: true) if time == "sunday_evening"
      @activities = Activity.where(monday_morning: true) if time == "monday_morning"
      @activities = Activity.where(monday_afternoon: true) if time == "monday_afternoon"
      @activities = Activity.where(monday_evening: true) if time == "monday_evening"
      @activities = Activity.where(tuesday_morning: true) if time == "tuesday_morning"
      @activities = Activity.where(tuesday_afternoon: true) if time == "tuesday_afternoon"
      @activities = Activity.where(tuesday_evening: true) if time == "tuesday_evening"
      @activities = Activity.where(wednesday_morning: true) if time == "wednesday_morning"
      @activities = Activity.where(wednesday_afternoon: true) if time == "wednesday_afternoon"
      @activities = Activity.where(wednesday_evening: true) if time == "wednesday_evening"
      @activities = Activity.where(thursday_morning: true) if time == "thursday_morning"
      @activities = Activity.where(thursday_afternoon: true) if time == "thursday_afternoon"
      @activities = Activity.where(thursday_evening: true) if time == "thursday_evening"
      @activities = Activity.where(friday_morning: true) if time == "friday_morning"
      @activities = Activity.where(friday_afternoon: true) if time == "friday_afternoon"
      @activities = Activity.where(friday_evening: true) if time == "friday_evening"
      @activities = Activity.where(saturday_morning: true) if time == "saturday_morning"
      @activities = Activity.where(saturday_afternoon: true) if time == "saturday_afternoon"
      @activities = Activity.where(saturday_evening: true) if time == "saturday_evening"
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
    @categories = Activity.pluck(:category).uniq
    @subcategories = Activity.pluck(:subcategory).uniq
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
