class DashboardsController < ApplicationController
  def show
    @my_activities = Activity.where(user_id: current_user.id)
    @my_participations = Booking.where(user_id: current_user.id)
  end
end