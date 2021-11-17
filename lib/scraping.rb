require 'pry'

module Irena

class EnergyScraper

  attr_accessor :root_url

  ENERGY_TYPES = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind" ]

  def initialize(*args)
    @root_url = root_url
  end
  
  def self.get_energies
    ENERGY_TYPES.each do |energy|
      doc = Nokogiri::HTML(URI.open("https://www.irena.org/#{energy}"))
      
      Irena::Energy.new(doc.css('h2')[0].text.strip, doc.css('div.center-right-border > p').text.strip)

    end
  end


      # energy_details = {}
      # energy_details[:name].doc.css('h2')[0].text.strip
      # energy_details[:description].doc.css('div.center-right-border > p').text.strip
      # Tried:  energy << energy_details.to_s   versus   # energy_details


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