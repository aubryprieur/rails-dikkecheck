class BelgesController < ApplicationController
  before_action :set_belge, only: [:show, :edit, :update, :destroy]
  def index
    @belges = Belge.all
  end

  def show
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

  def edit
  end

  def update
    @belge.user = current_user
    if @belge.user.update(belge_params)
        redirect_to belge_path(@belge)
       else
        render :new
      end
  end


  private

  def set_belge
      @belge = Belge.find(params[:id])
    end

  def belge_params
    params.require(:belge).permit(:first_name, :last_name, :description, :photo, :price, :user_id)
  end
end
