class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create

  end
  
  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
