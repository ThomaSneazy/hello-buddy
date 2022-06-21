class CategoriesController < ApplicationController
  def index
    if params[:query].present?
      @categories = Category.search_by_name(params[:query])
    else
      @categories = Category.all
    end
    @my_activities = Activity.where(user_id: current_user.id)
    @my_participations = Booking.where(user_id: current_user.id)
  end
end
