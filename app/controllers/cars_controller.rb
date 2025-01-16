class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @review = Review.new
    @car = Car.find(params[:id])
  end

end
