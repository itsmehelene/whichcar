class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    favourite = Favourite.new(car: @car, user: current_user)
    if favourite.save
      redirect_to car_path(@car)
    else
      redirect_to "/"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
  end

end
