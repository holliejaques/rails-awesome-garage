class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @review = Review.new
    @favourites = Favourite.all
    @favourite = Favourite.new
    @car = Car.find(params[:id])
  end

end
