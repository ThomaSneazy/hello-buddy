class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @marker =
      {
        lat: @booking.activity.latitude,
        lng: @booking.activity.longitude
      }
  end

  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.user = current_user
    @booking.save
    if @booking.save
      redirect_to category_activity_booking(@booking)
    else
      redirect_to root_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path, alert: "Your booking is canceled"
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
  params.require(:booking).permit(:validated, :activity_id, :user_id)
end
