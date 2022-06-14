class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show edit update destroy]

  def index
    @category = Category.find(params[:category_id])
    @activities = Activity.where(category_id: @category.id)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    @activity.save
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activities.path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :start_date, :end_date, :description, :location, :meeting_point, :difficulty, :max_of_participant, :category_id, :user_id)

  end
end
