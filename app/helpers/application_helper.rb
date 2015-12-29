module ApplicationHelper
  def body_class
    if request.path == "/"
      "all-hoods"
    elsif request.path.include?('activities') && request.path.include?('neighborhoods')
      "one-act"
    elsif request.path.include?('neighborhoods') && params[:id].nil?
      "all-hoods"
    elsif request.path.include?('neighborhoods') && !params[:id].nil?
      "one-hood"
    else request.path.include?('activities') && params[:id].nil?
      "all-acts"
    end
  end
end
