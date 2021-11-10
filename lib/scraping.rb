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

      name = doc.css('h2')[0].text
      description = doc.css('div.center-right-border > p').text

      Irena::Energy.new(name, description)
    end
  end

  # def self.get_energies
  #   ENERGY_TYPES.each do |energy|
  #     doc = Nokogiri::HTML(URI.open("https://www.irena.org/#{energy}"))
  #     energy_details = {}
  #     energy_details[:name] = doc.css('h2')[0].text,
  #     energy_details[:description] = doc.css('div.center-right-border > p').text
  #     energy << energy_details

  #   end
  #     Irena::Energy.new(:name, :description)
  # end
  

  # def self.get_bioenergy
  #   ENERGY_TYPES[0] = Nokogiri::HTML(URI.open('https://www.irena.org/bioenergy'))
  #   ENERGY_TYPES[0].css('div.center-right-border > p').text
  # end

  # def self.get_geothermal
  #   ENERGY_TYPES[1] = Nokogiri::HTML(URI.open('https://www.irena.org/geothermal'))
  #   ENERGY_TYPES[1].css('div.center-right-border > p').text
  # end

  # def self.get_hydropower
  #   ENERGY_TYPES[2] = Nokogiri::HTML(URI.open('https://www.irena.org/hydropower'))
  #   ENERGY_TYPES[2].css('div.center-right-border > p').text
  # end
  
  # def self.get_ocean
  #   ENERGY_TYPES[3] = Nokogiri::HTML(URI.open('https://www.irena.org/ocean'))
  #   ENERGY_TYPES[3].css('div.center-right-border > p').text
  # end
  
  # def self.get_solar
  #   ENERGY_TYPES[4] = Nokogiri::HTML(URI.open('https://www.irena.org/solar'))
  #   ENERGY_TYPES[4].css('div.center-right-border > p').text
  # end
  
  # def self.get_wind
  #   ENERGY_TYPES[5] = Nokogiri::HTML(URI.open('https://www.irena.org/wind'))
  #   ENERGY_TYPES[5].css('div.center-right-border > p').text
  # end


end

end

