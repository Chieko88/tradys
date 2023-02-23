class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @experiences = policy_scope(Experience).where(name: params[:query])
    else
      @experiences = policy_scope(Experience)
    end
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new
    authorize @experience
  end
end
