class PagesController < ApplicationController
  def home
    @car = Car.new
  end
end
