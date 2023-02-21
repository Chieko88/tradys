class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end

  def show
    @experience = Experience.find(params[:id])
    authorize @experience
  end
end
