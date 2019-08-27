class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @car = Car.new
  end
end
