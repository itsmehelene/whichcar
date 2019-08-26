class CarsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end
end
