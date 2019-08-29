class CarSearch
  def initialize(params, user)
    @params = params

    if user
      @cars = Car.select("cars.*, favourites.id IS NOT NULL as favourite").joins("LEFT JOIN favourites ON favourites.car_id = cars.id AND favourites.user_id = #{user.id}")
    else
      @cars = Car.select("cars.*, false as favourite")
    end

# SELECT *, favourites.id IS NOT NULL as favourite
# FROM cars
# LEFT JOIN favourites ON favourites.car_id = cars.id AND favourites.user_id = 2





    puts params
  end

  def search
    #raise
    filter_by_prices       if @params.key? :prices
    filter_by_passengers   if @params.key? :passengers
    filter_by_items        if @params.key? :items
    filter_by_ecology      if @params.key? :ecology
    filter_by_gearbox      if @params.key? :gearbox
    # filter_by_road         if @params.key? :road
    @cars
  end

  private

  def filter_by_prices
    prix = @params[:prices].split(';')
    @cars = @cars.where(price: prix[0].to_i..prix[1].to_i)
  end

  def filter_by_passengers
    if @params[:passengers] == "2"
      @cars = @cars.where(passengers: [2, 3])
    elsif @params[:passengers] == "5"
      @cars = @cars.where(passengers: 5)
    else @params[:passengers] == "More than 5"
      @cars = @cars.where(passengers: 7)
    end
  end

  def filter_by_items
    if @params[:items] == "Not a lot"
      @cars = @cars.where("trunk_size <= ?", 350)
    elsif @params[:items] == " A little bit"
      @cars = @cars.where(trunk_size: 350..700)
    else @params[:items] == "A lot"
      @cars = @cars.where("trunk_size > ?", 700)
    end
  end

  def filter_by_ecology
    if @params[:ecology] == "Yes"
      @cars = @cars.where(critair: [0, 1])
    end
  end

  def filter_by_gearbox
    if @params[:gearbox] == "Auto"
      @cars = @cars.where(gearbox: "Automatic")
    else
      @cars = @cars.where(gearbox: "Manual")
    end
  end

  # def filter_by_road
  #   @cars = @cars.where(road: @params[:road])
  # end
end
