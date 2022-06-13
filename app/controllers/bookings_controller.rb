class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.save
    @booking.user_id = current_user.id
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path, alert: "Your booking is deleted"
  end

  def validation
    @booking = Booking.find(params[:id])
    @booking.validated = true
    @booking.save
    redirect_to profile_path, notice: "Your booking is confirmed"
  end
end

private

def booking_params
  params.require(:booking).permit(:title, :date, :description, :localisation, :meeting_point, :difficulty, :max_of_participant, :activity, :user)
end
