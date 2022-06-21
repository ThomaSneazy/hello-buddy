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
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.user = current_user
    if @booking.save
      redirect_to @booking
    else
      redirect_to root_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(current_user), alert: "Votre demande est supprimée"
  end

  def refused
    @booking = Booking.find(params[:id])
    @booking.refused = true
    @booking.save
    redirect_to dashboard_path(current_user) + '?confirmed=true', notice: "Votre demande est refusée"
  end

  def validation
    @booking = Booking.find(params[:id])
    @booking.validated = true
    @booking.save
    redirect_to dashboard_path(current_user) + '?confirmed=true' , notice: "Votre demande est confirmée"
  end

  def pending
    @booking = Booking.find(params[:id])
    @booking.pending = true
    @booking.save
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:validated, :refused, :activity_id, :user_id)
  end
end
