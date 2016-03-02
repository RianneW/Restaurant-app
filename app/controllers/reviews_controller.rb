class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.valid?
      @review.save!
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new
    # @review.restaurant = @restaurant
    # if @review.valid?
    #   @review = Review.create!(review_params)
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   @review = Review.new(review_params)
    #   redirect_to new_review_path
    # end
  end

  private

  def review_params
    params.require(:review).permit(:content,:rating)
  end
end
