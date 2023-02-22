class BookingsController < ApplicationController
  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new(booking_params)
    @booking.experience = @experience
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to experience_path(@experience)
    else
      render 'experiences/show', status: :unprocessable_entity
    end
  end

  def index
    @bookings = policy_scope(Booking)
  end

  private

    # validates :start_date, presence: true
  def booking_params
    params.require(:booking).permit(:start_date)
  end
end
