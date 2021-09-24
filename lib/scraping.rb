module Irena

  attr_accessor :description

class EnergyScraper

  ENERGY_LINKS = {
    "1" => {
      resource: "bioenergy",
      url: "https://www.irena.org/bioenergy"
    },
    "2" => {
      resource: "geothermal",
      url: "https://www.irena.org/geothermal"
    },
    "3" => {
      resource: "hydropower",
      url: "https://www.irena.org/hydropower"
    },
    "4" => {
      resource: "ocean",
      url: "https://www.irena.org/ocean"
    },
    "5" => {
      resource: "solar",
      url: "https://www.irena.org/solar"
    },
    "6" => {
      resource: "wind",
      url: "https://www.irena.org/wind"
    }
  }

  def get_page(url)
    Nokogiri::HTML(open(url))
  end

  def fetch_renewables(url)
    self.get_page(url).css("p.center-right-border").each do |link|
      Irena::Selections.new_from_renewables(url)
    end
  end

  def description
    @description ||= self.get_page(url).css("p.center-right-border").text#.strip.gsub(/\s+/,' ')
  end
  


end

end
