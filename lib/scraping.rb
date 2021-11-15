require 'pry'

module Irena

class EnergyScraper

  attr_accessor :root_url

  ENERGY_TYPES = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind" ]

  def initialize(*args)
    @root_url = root_url
  end
  
  # This below appears to be working, but the scrape is not behaving as intended.
  def self.get_energies
    ENERGY_TYPES.each do |energy|
      doc = Nokogiri::HTML(URI.open("https://www.irena.org/#{energy}"))
      energy_details = {}
      energy_details[:name] = doc.css('h2')[0].text,
      energy_details[:description] = doc.css('div.center-right-border > p').text
      energy << energy_details.to_s

    end
  end

  # def self.get_energies
  #   ENERGY_TYPES.each do |energy|
  #     doc = Nokogiri::HTML(URI.open("https://www.irena.org/#{energy}"))
      
  #     Irena::Energy.new(
  #     name = doc.css('h2')[0].text,
  #     description = doc.css('div.center-right-border > p').text
  #     )

  #    return "Energy Type: #{name}"
  #    return "Description: #{description}"

  #   end
  # end
  


end

end
