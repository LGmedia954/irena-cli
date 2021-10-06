module Irena

class EnergyScraper

  attr_accessor :root_url

  def initialize(root_url)
    @root_url = url
  end

  ENERGY_TYPES = [ "bioenergy", "geothermal", "hydropower", "ocean", "solar", "wind" ]

  def self.fetch_renewables(url)
    ENERGY_TYPES[0] = Nokogiri::HTML(URI.open('https://www.irena.org/bioenergy'))
    ENERGY_TYPES[1] = Nokogiri::HTML(URI.open('https://www.irena.org/geothermal'))
    ENERGY_TYPES[2] = Nokogiri::HTML(URI.open('https://www.irena.org/hydropower'))
    ENERGY_TYPES[3] = Nokogiri::HTML(URI.open('https://www.irena.org/ocean'))
    ENERGY_TYPES[4] = Nokogiri::HTML(URI.open('https://www.irena.org/solar'))
    ENERGY_TYPES[5] = Nokogiri::HTML(URI.open('https://www.irena.org/wind'))
  end

  def self.get_bioenergy(url)
    self.fetch_renewables(url)
    ENERGY_TYPES[0].css('div.center-right-border > p').text
  end

  def self.get_geothermal(url)
    self.fetch_renewables(url)
    ENERGY_TYPES[1].css('div.center-right-border > p').text
  end

  def self.get_hydropower(url)
    self.fetch_renewables(url)
    ENERGY_TYPES[2].css('div.center-right-border > p').text
  end
  
  def self.get_ocean(url)
    self.fetch_renewables(url)
    ENERGY_TYPES[3].css('div.center-right-border > p').text
  end
  
  def self.get_solar(url)
    self.fetch_renewables(url)
    ENERGY_TYPES[4].css('div.center-right-border > p').text
  end
  
  def self.get_wind(url)
    self.fetch_renewables(url)
    ENERGY_TYPES[5].css('div.center-right-border > p').text
  end



end

end
