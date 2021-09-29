module Irena

class EnergyScraper

  attr_accessor :root_url


  ENERGY_TYPES = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind" ]


  def get_page(url)
    Nokogiri::HTML(open(url))
  end

  def scrape_info(url)
    self.get_page(url).css("p.center-right-border").each do |energy|
      return 
    end
  end

  def description
    @description ||= self.get_page(url).css("p.center-right-border").text#.strip.gsub(/\s+/,' ')
  end
  


end

end
