class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
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


# def create
#   @car = Car.find(params[:car_id])
#   @favourite = Favourite.new(car: @car, user: current_user)
#   if @favourite.save
#     respond_to do |format|
#       format.html { redirect_to root_path() }
#       format.js  # <-- will render `app/views/favourites/create.js.erb`
#     end
#   else
#     respond_to do |format|
#       format.html { redirect_to root_path() }
#       format.js  # <-- idem
#     end
#   end
# end
