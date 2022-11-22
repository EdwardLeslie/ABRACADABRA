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
    if @booking.save
      redirect_to @booking, notice: "Booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @booking = Booking.new
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
