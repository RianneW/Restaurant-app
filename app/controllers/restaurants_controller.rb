class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.valid?
      @restaurant = Restaurant.create!(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      @restaurant = Restaurant.new(restaurant_params)
      redirect_to new_restaurant_path
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name,:address,:category,:phone_number)
  end
end