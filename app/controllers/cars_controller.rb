class CarsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @cars = CarSearch.new(params).search
  end

  def show
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(car).permit(:year, :passengers, :fuel, :critair, :gearbox, :price)
  end
end
