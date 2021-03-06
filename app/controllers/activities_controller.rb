class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show edit update destroy]

  def index
    @category = Category.find(params[:category_id])

    if params[:activity] && params[:activity][:start_date].present?
      start_date = params[:activity][:start_date].to_datetime
      @activities = @category.activities.where(start_date: start_date..start_date + 24.hours)
    else
      @activities = @category.activities
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    @activity.save
    if @activity.save
      @chatroom = Chatroom.new(name: "Messagerie #{@activity.title}", user_id: @activity.user.id, activity_id: @activity.id)
      @chatroom.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @avg_rating = (@activity.user.reviews.map { |rev| rev.rating / @activity.user.reviews.size }).sum
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @category = @activity.category_id
    @activity.destroy
    redirect_to category_activities_path(@category)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :start_date, :end_date, :description, :material, :meeting_point, :difficulty, :max_of_participant, :category_id, :user_id)

  end
end
