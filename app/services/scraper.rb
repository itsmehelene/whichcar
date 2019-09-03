require 'nokogiri'
require 'open-uri'

class Scraper
  # if you dont have initialize the class will not work
  def self.scrap_links
    links = []
    page = 1
    while page < 76
      doc = Nokogiri::HTML(open("https://www.aramisauto.com/achat/recherche?page=#{page}").read)
      doc.search('.real-link.vehicle-info-link').each do |link|
        links << "https://www.aramisauto.com" + link.attribute('href').value
      end
      page += 1
    end
    links
  end

  def initialize(url)
    puts url
    @html_doc = Nokogiri::HTML(open(url).read)
  end

  def model
    @html_doc.search('.offer-car__model').text.split(/\n/).first
  end

  def car_type
    match = @html_doc.search('.labeled-pictogram__label').text.match(/occasion|0km/)
    match[0] if match
  end

  def price
    @html_doc.search('#price-total').attribute('data-price').value.to_i
  end

  def fuel
    match = @html_doc.search('.offer-car__resume li').first.text
    if match
      match.match(/(Essence|Diesel|Hybride|Electric|Electrique)/)
      return match[0]
    end
  end

  def gearbox
    match = @html_doc.search('.offer-car__resume li').last.text.match(/(automatique|manuelle)/)
    match[0] if match
  end

  def truck
    match = @html_doc.search('.technical-features__value').first.text.match(/[1-9][0-9][0-9]/)
    match[0] if match
  end

  def passengers
    match = @html_doc.search('.technical-features__value').text.match(/\d/)
    match[0] if match
  end

  def critair
    match = @html_doc.search('.labeled-pictogram span').text.match(/Crit'Air \d/)
    match[0] if match
  end

  def year
    match = @html_doc.search('.labeled-pictogram span').text.match(/([0-9][0-9](0|1)[0-9])/)
    match[0] if match
  end

  def photo
    @html_doc.search('.showcase img').attribute('data-original').value
  end
end
