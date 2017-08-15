class ReviewsController < ApplicationController
  # def index
  #   @review = Review.all
  # end

  # def show
  # end

  def new
    @belge = Belge.find(params[:belge_id])
    @review = Review.new
  end

  def create
    @belge = Belge.find(params[:belge_id])
    @review = Review.new(review_params)
    @review.belge = Belge.find(params[:belge_id])
    @review.user = current_user
      if @review.save
        redirect_to belge_path(@belge)
      else
        render :new
      end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def review_params
    params.require(:review).permit(:title, :description, :rating, :belge_id)
  end
end
