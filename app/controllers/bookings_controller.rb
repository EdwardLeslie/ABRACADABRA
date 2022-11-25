class BookingsController < ApplicationController
  def index
    # if params[:experience_id]
      @bookings = current_user.experiences.find(params[:experience_id]).bookings
      @experience = Experience.find(params[:experience_id])
    # else
    #   @experiences = Experience.where(user_id: current_user)
    # end
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to magician_experience_bookings_path(@booking.magician, @booking.experience)
  end

  def new
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
  end

  def create
    @booking = Booking.new(booking_params)
    experience = Experience.find(params[:experience_id])
    magician = experience.user
    @booking.magician_id = magician.id
    @booking.customer_id = current_user.id
    @booking.status = "pending"
    @booking.experience = experience
    if @booking.save
      redirect_to dashboard_path, notice: "Booking was successfully created."
    else
      render "experiences/show", status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  # def redirect
  #   if @booking.save
  #     redirect_to booking_path(booking)
  #   else
  #     render "bookings/index", status: :unprocessable_entity
  #   end
  # end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to magician_experience_bookings_path(@booking.magician, @booking.experience)
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
