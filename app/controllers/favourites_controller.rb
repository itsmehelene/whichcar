class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new(car: @car, user: current_user)
    @favourite.save!
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
  end
end
