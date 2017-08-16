class ProfilsController < ApplicationController
  def dashboard
    @bookings = current_user.bookings
    @belges = current_user.belges
  end
end
