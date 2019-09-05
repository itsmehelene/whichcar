require 'nokogiri'
require 'open-uri'

class Scraper
  # if you dont have initialize the class will not work
  def self.scrap_links
    links = []
    page = 1
    while page < 80
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
    if resume.present?
      match = resume.first.text.match(/(Essence|Diesel|Hybride|Electric|Electrique)/)
      fuel = match[0].strip
      p fuel
      if fuel.present?
        fuel
      else
        binding.pry
        nil
      end
    end
  end

  def gearbox
    if resume.present?
      match = resume.last.text.match(/(automatique|manuelle)/)
      match[0] if match
    end
  end

  def truck
    if features.present?
      match = features.first.text.match(/[1-9][0-9][0-9]/)
      match[0] if match
    end
  end

  def horse_power_fiscal
    if features.present?
      match = features.text.match(/\d+ CV/)
      match[0] if match
    end
  end

  def horse_power
    if features.present?
      match = features.text.match(/\d+ ch/)
      match[0] if match
    end
  end

  def passengers
    if features.present?
      match = features.text.match(/\d/)
      match[0] if match
    end
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

  def features
    @html_doc.search('.technical-features__value')
  end

  def resume
    @html_doc.search('.offer-car__resume li')
  end
end
