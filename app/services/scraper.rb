require 'nokogiri'
require 'open-uri'

class Scraper

  def initialize
    @doc = Nokogiri::HTML(open("https://www.lacentrale.fr/listing").read)
  end


  def print_first_title
    @doc.search('.brandModel').map do |element|
      element.text
    end
  end


  def link
    @array = []
    @array2 = []
    @doc.search('.adLineContainer a').map do |element|
      @array << element.attribute('href').value
    end

    @array.each do |link|
      @doc = Nokogiri::HTML(open("https://www.lacentrale.fr/#{link}").read)
      @array2 << @doc.search('.cbm__priceWrapper').text
    end
    return @array2
  end
end

