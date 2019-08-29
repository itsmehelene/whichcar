require 'nokogiri'
require 'open-uri'

class Scraper

  def initialize
    @doc = Nokogiri::HTML(open("https://www.aramisauto.com/achat/recherche?page=0&scroll=9316&p=4&klxw=1").read)
  end


  def print_first_title
    @doc.search('.vehicle-model').map do |element|
      element.text
    end
  end


  def link
    @array = []
    @array2 = []
    @doc.search('.vehicle-general-info a').map do |element|
      @array << element.attribute('href').value
    end
    return @array
  end

  def price
    @array2 = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      @array2 << @doc.search('#price-total').attribute('data-price').value.to_i
    end
    return @array2
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
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      @truck_scrap << @doc.search('.technical-features__value').first.text
    end
    return @truck_scrap
  end

  def critair
    @critair_scrap = []
    matched = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      matched = @doc.search('.labeled-pictogram span').text.match(/Certificat Crit'Air \d/)
      @critair_scrap << matched[0]
    end
    return @critair_scrap
  end

  def year
    @year_scrap = []
    matched = []
    link.each do |link|
      @doc = Nokogiri::HTML(open("https://www.aramisauto.com#{link}").read)
      matched = @doc.search('.labeled-pictogram span').text.match(/[0-9][0-9]\/([0-9][0-9])\/([0-9][0-9](0|1)[0-9])/)
      @year_scrap << matched[0]
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

