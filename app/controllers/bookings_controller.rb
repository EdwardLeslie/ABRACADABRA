class BookingsController < ApplicationController
  def accept
    @booking.update!(status: 'approved')
    redirect_to booking_path(@booking)
  end

  def decline
    @booking.update!(status: 'declined')
    redirect_to booking_path(@booking)
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

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
