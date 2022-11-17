class CategoriesController < ApplicationController
  def index
    if params[:query].present?
      @categories = Category.where('name ILIKE ?', "%#{params[:query]}%")
    else
      @categories = Category.all
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { categories: @categories } }
    end

    if current_user.present?
      @my_activities = Activity.where(user_id: current_user.id)
      @my_participations = Booking.where(user_id: current_user.id)
    end
  end
end
