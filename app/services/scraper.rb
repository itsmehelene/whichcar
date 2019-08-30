require 'nokogiri'
require 'open-uri'

class Scraper
  # if you dont have initialize the class will not work
  def initialize
    @docs = []
    i = 1
    while i < 3
      @docs << Nokogiri::HTML(open("https://www.aramisauto.com/achat/recherche?page=#{i}").read)
      i += 1
    end
  end

  def model
    model = []
    @docs.each do |doc|
      doc.search('.vehicle-model').map do |element|
        model << element.text
      end
    end
    model
  end

  def link
    @link = []
    @docs.each do |doc|
      doc.search('.vehicle-general-info a').map do |element|
        @link << element.attribute('href').value
      end
    end
    return @link
  end

  def price
    @price = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      @price << @doc.search('#price-total').attribute('data-price').value.to_i
    end
    return @price
  end

  def fuel
    @fuel_scrap = []
    matched = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      matched = @doc.search('.offer-car__resume li').first.text.match(/(Essence|Diesel|Hybride|Electric)/)
      @fuel_scrap << matched[0]
    end
    return @fuel_scrap
  end

  def gearbox
    @gear_scrap = []
    matched = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      matched = @doc.search('.offer-car__resume li').last.text.match(/(automatique|manuelle)/)
      @gear_scrap << matched[0]
    end
    return @gear_scrap
  end

  def truck
    @truck_scrap = []
    matched = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
       matched = @doc.search('.technical-features__value').first.text.match(/[1-9][0-9][0-9]/)
       @truck_scrap << matched[0].to_i
    end
    return @truck_scrap
  end

  def passenger
    @passenger_scrap = []
    matched = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      matched = @doc.search('.technical-features__value').text.match(/\d/)
      @passenger_scrap << matched[0].to_i
    end
    return @passenger_scrap
  end

  def critair
    @critair_scrap = []
    matched = []
    number = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      matched = @doc.search('.labeled-pictogram span').text.match(/Crit'Air \d/)
      number = matched[0].match(/\d/)
      @critair_scrap << number[0].to_i
    end
    return @critair_scrap
  end

  def year
    @year_scrap = []
    matched = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      matched = @doc.search('.labeled-pictogram span').text.match(/([0-9][0-9](0|1)[0-9])/)
      @year_scrap << matched[0].to_i
    end
    return @year_scrap
  end

  def photo
    @photo_scrap = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      @photo_scrap << @doc.search('.showcase img').attribute('data-original').value
    end
    return @photo_scrap
  end


end

