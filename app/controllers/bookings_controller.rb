class BookingsController < ApplicationController
  def show
  end

  def index
    @bookings = Booking.all
  end

  def new
    @belge = Belge.find(params[:belge_id])
    @booking = Booking.new
  end

  def create
    @belge = Belge.find(params[:belge_id])
    @booking = Booking.new(booking_params)
    @booking.belge = Belge.find(params[:belge_id])
    @booking.user = current_user
      if @booking.save
        redirect_to dashboard_path
      else
        render :new
      end
  end

  def edit
    @belge = Belge.find(params[:belge_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
  end

    private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :message, :belge_id)
  end

end








