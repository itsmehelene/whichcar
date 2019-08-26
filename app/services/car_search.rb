class CarSearch
  def initialize(params)
    @params = params
    @cars = Car.all
  end

  def search
    filter_by_price if @params[:price].present?
    filter_by_passengers if @params[:passengers].present?
    filter_by_fuel if @params[:fuel].present?
    filter_by_critair if @params[:critair].present?
    filter_by_gearbox if @params[:gearbox].present?
    filter_by_year if @params[:year].present?
    @cars
  end

  private

  def filter_by_price
    @cars = @cars.where(price: @params[:price])
  end

  def filter_by_passengers
    @cars = @cars.where(passengers: @params[:passengers])
  end

  def filter_by_year
    @cars = @cars.where(year: @params[:year])
  end

  def filter_by_fuel
    @cars = @cars.where(fuel: @params[:fuel])
  end

  def filter_by_critair
    @cars = @cars.where(critair: @params[:critair])
  end

  def filter_by_gearbox
    @cars = @cars.where(gearbox: @params[:gearbox])
  end
end
