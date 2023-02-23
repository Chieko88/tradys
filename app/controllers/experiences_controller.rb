class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @experiences = all_experiences.search_by_name_and_description(params[:query])
    else
      @experiences = all_experiences
    end
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new
    authorize @experience
  end

  private

  def all_experiences
    policy_scope(Experience)
  end

end
