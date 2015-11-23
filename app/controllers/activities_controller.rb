class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find(params[:id])
    @when = []
    @when.push("Monday Mornings")if @activity.monday_morning
    @when.push("Monday Afternoons") if @activity.monday_afternoon
    @when.push("Monday Evenings") if @activity.monday_evening
    @when.push("Tuesday Mornings") if @activity.tuesday_morning
    @when.push("Tuesday Afternoons") if @activity.tuesday_afternoon
    @when.push("Tuesday Evenings") if @activity.tuesday_evening
    @when.push("Wednesday Mornings") if @activity.wednesday_morning
    @when.push("Wednesday Afternoons") if @activity.wednesday_afternoon
    @when.push("Wednesday Evenings") if @activity.wednesday_evening
    @when.push("Thursday Mornings") if @activity.thursday_morning
    @when.push("Thursday Afternoons") if @activity.thursday_afternoon
    @when.push("Thursday Evenings") if @activity.thursday_evening
    @when.push("Friday Mornings") if @activity.friday_morning
    @when.push("Friday Afternoons") if @activity.friday_afternoon
    @when.push("Friday Evenings") if @activity.friday_evening
    @when.push("Saturday Mornings") if @activity.saturday_morning
    @when.push("Saturday Afternoons") if @activity.saturday_afternoon
    @when.push("Saturday Evenings") if @activity.saturday_evening
    @when.push("Sunday Mornings") if @activity.sunday_morning
    @when.push("Sunday Afternoons") if @activity.sunday_afternoon
    @when.push("Sunday Afternoons") if @activity.sunday_evening
    case @activity.price_range
    when "0"
      @price_range = "Free"
    when "1-5"
      @price_range = "$1 - $5"
    when "5-10"
      @price_range = "$5 - $10"
    when "10-5"
      @price_range = "$10 - $15"
    when "15-20"
      @price_range = "$15 - $20"
    else
      @price_range = "Over $20"
    end
  end
end
