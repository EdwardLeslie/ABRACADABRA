class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to experiences_path(@experiences)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @experience = Experience.find(params[:id])
  end

  private

  def experience_params
    params.require(:experience).permit(:title, :photo)
  end

end
