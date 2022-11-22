class BookingsController < ApplicationController
  def accept
    @booking.update!(status: 'approved')
    redirect_to booking_path(@booking)
  end

  def decline
    @booking.update!(status: 'declined')
    redirect_to booking_path(@booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = "pending"
    @booking.experience = Experience.find(params[:experience_id])
    if @booking.save
      redirect_to dashboard_path, notice: "Booking was successfully created."
    else
      render "experiences/show", status: :unprocessable_entity
    end
  end

  def new
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date,:end_date)
  end
end
