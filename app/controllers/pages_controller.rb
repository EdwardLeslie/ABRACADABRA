class PagesController < ApplicationController
  def dashboard
    @magician_bookings = current_user.magician_bookings
    @customer_bookings = current_user.customer_bookings
  end
end
