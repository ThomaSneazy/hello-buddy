class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @booking.save

    if @booking.save
      @booking.activity = @activity
      @booking.user_id = current_user.id
      redirect_to booking_path(@booking)
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
  params.require(:booking).permit(:activity, :user, :validated)
end
