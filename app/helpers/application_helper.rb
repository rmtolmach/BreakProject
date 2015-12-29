module ApplicationHelper
  def body_class
    if request.path.include?('neighborhoods') && params[:id].nil?
      "all-hoods"
    elsif request.path == "/"
      "all-hoods"
    elsif request.path.include?('neighborhoods') && !params[:id].nil?
      "one-hood"
    elsif request.path.include?('activities') && params[:id].nil?
      "all-acts"
    else request.path.include?('activities') && !params[:id].nil?
      "one-act"
    end
  end
end
