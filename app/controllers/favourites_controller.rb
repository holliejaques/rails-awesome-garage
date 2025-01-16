class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.all
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new
    @favourite.car = @car # assigning instance of car to the favourite
    if @favourite.save
      redirect_to favourites_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, status: :see_other
  end

end
