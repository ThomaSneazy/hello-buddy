class DashboardsController < ApplicationController
  def show
    @open_tab = "pending"
    if params[:confirmed]
      @open_tab = "confirmed"
    end
    @my_activities = Activity.where(user_id: current_user.id)
    @my_participations = Booking.where(user_id: current_user.id)
  end
end
