module Irena

class EnergyScraper

  attr_accessor :root_url


  ENERGY_TYPES = [ "bioenergy", "geothermal", "hydropower", "ocean", "solar", "wind" ]


  def fetch_renewables(url)
    ENERGY_TYPES[0] = Nokogiri::HTML(URI.open('https://www.irena.org/bioenergy'))
    ENERGY_TYPES[1] = Nokogiri::HTML(URI.open('https://www.irena.org/geothermal'))
    ENERGY_TYPES[2] = Nokogiri::HTML(URI.open('https://www.irena.org/hydropower'))
    ENERGY_TYPES[3] = Nokogiri::HTML(URI.open('https://www.irena.org/ocean'))
    ENERGY_TYPES[4] = Nokogiri::HTML(URI.open('https://www.irena.org/solar'))
    ENERGY_TYPES[5] = Nokogiri::HTML(URI.open('https://www.irena.org/wind'))
  end

  def scrape_info(url)
    self.fetch_renewables(url).css('div.center-right-border > p').text
  end


end

end
