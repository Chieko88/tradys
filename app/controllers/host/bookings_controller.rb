class Host::BookingsController < ApplicationController
  def index
    @bookings = policy_scope([:host, Booking])
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to bookings_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_time)
  end
end
