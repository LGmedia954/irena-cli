module Irena

  attr_accessor :description

class EnergyScraper

  energy_links = {
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

  def fetch_renewables(url, *args)
    self.get_page(url).css("p.center-right-border").each do |page|
      Irena::Selections.new_from_renewables(page, *args)
    end
  end


  
  

end

end
