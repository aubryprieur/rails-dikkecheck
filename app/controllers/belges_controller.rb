class BelgesController < ApplicationController
  before_action :set_belge, only: [:show, :edit]
  def index

    if params[:city] != ''
      @belges = Belge.near(params[:city], 10)
    else
      @belges = Belge.where.not(latitude: nil, longitude: nil)
    end

    @hash = Gmaps4rails.build_markers(@belges) do |belge, marker|
      marker.lat belge.latitude
      marker.lng belge.longitude
      marker.infowindow belge.first_name + " " + belge.last_name
    end
  end

  def show
    @belge_coordinates = { lat: @belge.latitude, lng: @belge.longitude }
    @booking = Booking.new
  end

  def new
    @belge = Belge.new
  end

  def create
    @belge = Belge.new(belge_params)
    @belge.user = current_user
    if @belge.save
      redirect_to belge_path(@belge)
    else
      p @belge.errors
      render :new
    end
  end

  # def edit

  # end

  # def update
  #   @belge.user = current_user
  #   if @belge.user.update(belge_params)
  #       redirect_to belge_path(@belge)
  #      else
  #       render :new
  #     end
  # end


  private

  def set_belge
    @belge = Belge.find(params[:id])
  end

  def belge_params
    params.require(:belge).permit(:first_name, :last_name, :description, :photo, :price, :address, :user_id, belge_category_ids: [] )
  end
end
