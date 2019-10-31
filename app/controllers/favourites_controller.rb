class FavouritesController < ApplicationController
    skip_before_action :authenticate_user!, only: :show

  def index
    @favourites = current_user.favourites
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new(car: @car, user: current_user)
    @favourite.save
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @car = @favourite.car
    redirect_to favourites_path if @favourite.destroy
  end
end
