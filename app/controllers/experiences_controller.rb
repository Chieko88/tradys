class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @experiences = policy_scope(Experience)
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new
    authorize @experience
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.save
    redirect_to experiences_path
    else
      render :new
    end
  end


private

def experience_params
  params.require(:experience).permit(:name, :address, :description, :price, :duration, :photo)
end

end
