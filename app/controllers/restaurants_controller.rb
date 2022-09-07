class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end



  def new
    @restaurant = Restaurant.new
  end

  def create
    # @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # @restaurant = Restaurant.find(params[:id])
    render :show
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :phone_number, :address)
  end

end
