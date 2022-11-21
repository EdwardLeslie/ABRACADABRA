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
    Booking.create(params[:booking])
  end
  def new
    @booking = Booking.new
  end
end
