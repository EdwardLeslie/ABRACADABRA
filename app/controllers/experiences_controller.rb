class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = <<~SQL
        experiences.title @@ :query
        OR experiences.city @@ :query
        OR experiences.category @@ :query
        OR experiences.duration @@ :query
      SQL
      @experiences = Experience.where(sql_query, query: "%#{params[:query]}%")
    else
      @experiences = Experience.all
    end
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
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
    params.require(:experience).permit(:title, :description, :city, :price, :duration, :category, :photo)
  end
end
