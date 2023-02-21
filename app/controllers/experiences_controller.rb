class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @experiences = policy_scope(Experience)
  end

  def show
    @experience = Experience.find(params[:id])
    authorize @experience
  end
end
